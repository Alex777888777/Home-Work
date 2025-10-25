
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate

meteor create --release 1.3-beta.12 myapp

export NODE_TLS_REJECT_UNAUTHORIZED=0
curl https://install.meteor.com/ | sh
    sudo npm install -g meteor --unsafe-perm
    curl -L https://packages.meteor.com/bootstrap-link?release=1.3-beta.12 | sh
export PATH=$PATH:$(dirname $METEOR_PATH)
====
npm uninstall redux-devtools redux-devtools-dock-monitor redux-devtools-log-monitor react-s-alert velocity-react
rm -rf node_modules
npm install --legacy-peer-deps
======================
import { recalculateOrderTotals } from '../../../lib/order-logic';
import CustomerCompanies from '../customers/customer-company';
import { createCollection } from '../lib/collection-helpers.js';


// Make it available to the rest of the app
const Orders = createCollection("Orders", Schemas.OrderSchema);

Orders.before.insert(function (userId, doc) {
    //console.log("Orders.before.insert", doc);
    customerCompanyDenormalizer.beforeInsert(userId, doc);
});

Orders.before.update(function (userId, doc, fieldNames, modifier, options) {
    //.log("Orders.before.update", doc);
    customerCompanyDenormalizer.beforeUpdate(userId, doc, fieldNames, modifier, options);
});

Orders.before.upsert(function (userId, selector, modifier, options) {
    //console.log("Orders.before.upsert", modifier.$set);
    customerCompanyDenormalizer.beforeUpsert(userId, selector, modifier, options);
});


Orders.after.insert(function (userId, doc) {
    //console.log("Orders.after.insert", doc);
    customerCompanyDenormalizer.afterInsert(userId, doc);
});

Orders.after.update(function (userId, doc, fieldNames, modifier, options) {
    //console.log("Orders.after.update", doc);
    customerCompanyDenormalizer.afterUpdate(userId, doc, fieldNames, modifier, options, this.previous);
});


const customerCompanyDenormalizer = {

    // Ensure that no matter what customerName we receive from the client,
    // the correct name for the selected customerId is always set.
    _updateCompanyNameOnOrder(order) {

        // We only want to do this update on the server - it was already done on the client
        // And wouldn't work on the client as we are accessing the customer table directly
        // and also because the client miniMongo data subset may not contain the customer
        // at that point in time
        if (Meteor.isServer) {
            //console.log("customerCompanyDenormalizer._updateCompanyNameOnOrder() ",
            //    order.customerId + " - " + order.customerName);

            // no action needed if the customerId is not set
            if (!order.customerId || order.customerId === null) {
                return;
            }

            //const handle = Meteor.subscribe('CustomerCompany.get', order.customerId);
            const customer = CustomerCompanies.findOne({_id: order.customerId});

            if (!customer) {
                throw new Meteor.Error("The customer could not be found in the database");
            }

            order.customerName = customer.name;
        }
    },

    _updateCompanyOrderTotals(customerId, previousCustomerId) {
        if (Meteor.isServer) {
            //console.log("_updateCompanyOrderTotals", customerId);

            // no action needed if the customerId is not set
            if (!customerId || customerId === null) {
                return;
            }

            let customerIds = [ customerId ];

            // if the customer Id changed we also need to update the order totals for
            // the old customer
            if (customerId !== previousCustomerId) {
                customerIds.push(previousCustomerId);
            }

            customerIds.forEach(function (thisCustomerId) {
                let pipeline = [
                    {
                        $match: {
                            customerId: thisCustomerId
                        }
                    },
                    {
                        $group: {
                            _id: null,
                            ordersTotalValue: {$sum: "$totalValue"},
                            ordersCount: {$sum: 1}
                        }
                    }
                ];

                //console.log("thisCustomerId: ", thisCustomerId);
                let result = Orders.aggregate(pipeline, {customerId: thisCustomerId})[0];

                //console.log("result: ", result);
                CustomerCompanies.update(thisCustomerId, {
                    $set: {
                        // the result will be null if this customer now has no orders
                        ordersTotalValue: result ? result.ordersTotalValue : 0,
                        ordersCount: result ? result.ordersCount : 0
                        //email: "hi@hi.com" //+ new Date().toTimeString()
                    }
                });
            });

            //console.log("_updateCompanyOrderTotals Completed");
        }
    },

    _performCommonBeforeModifyActions(orderDoc) {
        recalculateOrderTotals(orderDoc);
        this._updateCompanyNameOnOrder(orderDoc);
    },
    
    _performCommonAfterModifyActions(orderDoc, previousDoc) {
        // Previous doc will be null for new records.
        this._updateCompanyOrderTotals(orderDoc.customerId, previousDoc ? previousDoc.customerId : null);
    },
    
    beforeInsert(userId, doc) {
        this._performCommonBeforeModifyActions(doc);
    },

    beforeUpdate(userId, doc, fieldNames, modifier, options) {
        this._performCommonBeforeModifyActions(doc);
    },

    beforeUpsert(userId, selector, modifier, options) {
        this._performCommonBeforeModifyActions(modifier.$set);
    },

    afterInsert(userId, doc) {
        this._performCommonAfterModifyActions(doc);
    },

    afterUpdate(userId, doc, fieldNames, modifier, options, previousDoc) {
        //console.log("previousDoc: ", previousDoc);
        this._performCommonAfterModifyActions(doc, previousDoc);
    }   

};

export default Orders;
