
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
===
Ошибка добавления клиента: error: insert or update on table "clients" violates foreign key constraint "clients_created_by_fkey"
    at /home/al/Crm_for_M/node_modules/pg/lib/client.js:545:17
    at process.processTicksAndRejections (node:internal/process/task_queues:105:5)
    at async /home/al/Crm_for_M/server.js:111:26 {
  length: 260,
  severity: 'ERROR',
  code: '23503',
  detail: 'Key (created_by)=(26) is not present in table "users".',
  hint: undefined,
  position: undefined,
  internalPosition: undefined,
  internalQuery: undefined,
  where: undefined,
  schema: 'public',
  table: 'clients',
  column: undefined,
  dataType: undefined,
  constraint: 'clients_created_by_fkey',
  file: 'ri_triggers.c',
  line: '2772',
  routine: 'ri_ReportViolation'
}
