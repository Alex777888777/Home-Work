
c18f1c95c170421fb9f8ae3e37fed95b
sudo -u jenkins pip install flask flask_sqlalchemy flask-wtf flask-login flask-migrate
---
https://github.com/ehtasham89/simple-crm-nodejs-reactjs-mongodb.git
export NODE_OPTIONS="--openssl-legacy-provider"
---
13220 http fetch GET 200 https://registry.npmjs.org/request-promise-core 56ms (cache miss)
13221 silly packumentCache corgi:https://registry.npmjs.org/request-promise-core set size:undefined disposed:false
13222 http fetch GET 200 https://registry.npmjs.org/request-promise-native 70ms (cache miss)
13223 silly packumentCache corgi:https://registry.npmjs.org/request-promise-native set size:undefined disposed:false
13224 info run core-js@2.6.11 postinstall { code: 0, signal: null }
13225 http fetch GET 200 https://registry.npmjs.org/node-gyp 144ms (cache miss)
13226 silly packumentCache corgi:https://registry.npmjs.org/node-gyp set size:undefined disposed:false
13227 http fetch GET 200 https://registry.npmjs.org/jsdom 267ms (cache miss)
13228 silly packumentCache corgi:https://registry.npmjs.org/jsdom set size:undefined disposed:false
13229 silly packumentCache corgi:https://registry.npmjs.org/glob cache-miss
13230 silly packumentCache corgi:https://registry.npmjs.org/globule cache-miss
13231 silly packumentCache corgi:https://registry.npmjs.org/eslint-plugin-import cache-miss
13232 silly packumentCache corgi:https://registry.npmjs.org/test-exclude cache-miss
13233 silly packumentCache corgi:https://registry.npmjs.org/fork-ts-checker-webpack-plugin cache-miss
13234 silly packumentCache corgi:https://registry.npmjs.org/recursive-readdir cache-miss
13235 info run node-sass@4.14.1 postinstall { code: 1, signal: null }
13236 http fetch GET 200 https://registry.npmjs.org/recursive-readdir 1295ms (cache miss)
13237 silly packumentCache corgi:https://registry.npmjs.org/recursive-readdir set size:undefined disposed:false
13238 http fetch GET 200 https://registry.npmjs.org/globule 1298ms (cache miss)
13239 silly packumentCache corgi:https://registry.npmjs.org/globule set size:undefined disposed:false
13240 http fetch GET 200 https://registry.npmjs.org/test-exclude 1304ms (cache miss)
13241 silly packumentCache corgi:https://registry.npmjs.org/test-exclude set size:undefined disposed:false
13242 http fetch GET 200 https://registry.npmjs.org/glob 1311ms (cache miss)
13243 silly packumentCache corgi:https://registry.npmjs.org/glob set size:undefined disposed:false
13244 http fetch GET 200 https://registry.npmjs.org/eslint-plugin-import 1319ms (cache miss)
13245 silly packumentCache corgi:https://registry.npmjs.org/eslint-plugin-import set size:undefined disposed:false
13246 verbose stack Error: command failed
13246 verbose stack     at promiseSpawn (/usr/lib/node_modules_22/npm/node_modules/@npmcli/promise-spawn/lib/index.js:22:22)
13246 verbose stack     at spawnWithShell (/usr/lib/node_modules_22/npm/node_modules/@npmcli/promise-spawn/lib/index.js:124:10)
13246 verbose stack     at promiseSpawn (/usr/lib/node_modules_22/npm/node_modules/@npmcli/promise-spawn/lib/index.js:12:12)
13246 verbose stack     at runScriptPkg (/usr/lib/node_modules_22/npm/node_modules/@npmcli/run-script/lib/run-script-pkg.js:77:13)
13246 verbose stack     at runScript (/usr/lib/node_modules_22/npm/node_modules/@npmcli/run-script/lib/run-script.js:9:12)
13246 verbose stack     at /usr/lib/node_modules_22/npm/node_modules/@npmcli/arborist/lib/arborist/rebuild.js:329:17
13246 verbose stack     at run (/usr/lib/node_modules_22/npm/node_modules/promise-call-limit/dist/commonjs/index.js:67:22)
13246 verbose stack     at /usr/lib/node_modules_22/npm/node_modules/promise-call-limit/dist/commonjs/index.js:79:13
13246 verbose stack     at process.processTicksAndRejections (node:internal/process/task_queues:105:5)
13247 verbose pkgid node-sass@4.14.1
13248 error code 1
13249 error path /home/al/simple-crm-nodejs-reactjs-mongodb/frontend/node_modules/node-sass
13250 error command failed
13251 error command sh -c node scripts/build.js
13252 error Building: /usr/bin/node-22 /home/al/simple-crm-nodejs-reactjs-mongodb/frontend/node_modules/node-gyp/bin/node-gyp.js rebuild --verbose --libsass_ext= --libsass_cflags= --libsass_ldflags= --libsass_library=
13253 error gyp info it worked if it ends with ok
13253 error gyp verb cli [
13253 error gyp verb cli   '/usr/bin/node-22',
13253 error gyp verb cli   '/home/al/simple-crm-nodejs-reactjs-mongodb/frontend/node_modules/node-gyp/bin/node-gyp.js',
13253 error gyp verb cli   'rebuild',
13253 error gyp verb cli   '--verbose',
13253 error gyp verb cli   '--libsass_ext=',
13253 error gyp verb cli   '--libsass_cflags=',
13253 error gyp verb cli   '--libsass_ldflags=',
13253 error gyp verb cli   '--libsass_library='
13253 error gyp verb cli ]
13253 error gyp info using node-gyp@3.8.0
13253 error gyp info using node@22.16.0 | linux | x64
13253 error gyp verb command rebuild []
13253 error gyp verb command clean []
13253 error gyp verb clean removing "build" directory
13253 error gyp verb command configure []
13253 error gyp verb check python checking for Python executable "/usr/bin/python3" in the PATH
13253 error gyp verb `which` succeeded /usr/bin/python3 /usr/bin/python3
13253 error (node:18044) [DEP0060] DeprecationWarning: The `util._extend` API is deprecated. Please use Object.assign() instead.
13253 error (Use `node-22 --trace-deprecation ...` to show where the warning was created)
13253 error gyp ERR! configure error 
13253 error gyp ERR! stack Error: Command failed: /usr/bin/python3 -c import sys; print "%s.%s.%s" % sys.version_info[:3];
13253 error gyp ERR! stack   File "<string>", line 1
13253 error gyp ERR! stack     import sys; print "%s.%s.%s" % sys.version_info[:3];
13253 error gyp ERR! stack                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
13253 error gyp ERR! stack SyntaxError: Missing parentheses in call to 'print'. Did you mean print(...)?
13253 error gyp ERR! stack 
13253 error gyp ERR! stack     at genericNodeError (node:internal/errors:983:15)
13253 error gyp ERR! stack     at wrappedFn (node:internal/errors:537:14)
13253 error gyp ERR! stack     at ChildProcess.exithandler (node:child_process:414:12)
13253 error gyp ERR! stack     at ChildProcess.emit (node:events:518:28)
13253 error gyp ERR! stack     at maybeClose (node:internal/child_process:1101:16)
13253 error gyp ERR! stack     at ChildProcess._handle.onexit (node:internal/child_process:304:5)
13253 error gyp ERR! System Linux 6.12.0-142.el10.x86_64
13253 error gyp ERR! command "/usr/bin/node-22" "/home/al/simple-crm-nodejs-reactjs-mongodb/frontend/node_modules/node-gyp/bin/node-gyp.js" "rebuild" "--verbose" "--libsass_ext=" "--libsass_cflags=" "--libsass_ldflags=" "--libsass_library="
13253 error gyp ERR! cwd /home/al/simple-crm-nodejs-reactjs-mongodb/frontend/node_modules/node-sass
13253 error gyp ERR! node -v v22.16.0
13253 error gyp ERR! node-gyp -v v3.8.0
13253 error gyp ERR! not ok 
13253 error Build failed with error code: 1
13254 silly unfinished npm timer reify 1761422626420
13255 silly unfinished npm timer reify:audit 1761422694694
13256 silly unfinished npm timer auditReport:init 1761422696301
13257 silly unfinished npm timer reify:build 1761422711458
13258 silly unfinished npm timer build 1761422711463
13259 silly unfinished npm timer build:deps 1761422711465
13260 silly unfinished npm timer build:run:postinstall 1761422712387
13261 silly unfinished npm timer build:run:postinstall:node_modules/node-sass 1761422712483
13262 silly unfinished npm timer metavuln:calculate:security-advisory:glob:V17OIdoDCKMsL6IbTp64TOVCHG2YXRQkmwFU7i3zvVGsUxfAfMWqRYB1FvN0tgRDKj27ZKHZDDYNKsHYY6pIWg== 1761422712769
13263 silly unfinished npm timer metavuln:calculate:security-advisory:eslint-plugin-import:V17OIdoDCKMsL6IbTp64TOVCHG2YXRQkmwFU7i3zvVGsUxfAfMWqRYB1FvN0tgRDKj27ZKHZDDYNKsHYY6pIWg== 1761422712769
13264 silly unfinished npm timer metavuln:calculate:security-advisory:fork-ts-checker-webpack-plugin:V17OIdoDCKMsL6IbTp64TOVCHG2YXRQkmwFU7i3zvVGsUxfAfMWqRYB1FvN0tgRDKj27ZKHZDDYNKsHYY6pIWg== 1761422712770
13265 silly unfinished npm timer metavuln:packument:fork-ts-checker-webpack-plugin 1761422712770
13266 silly unfinished npm timer metavuln:cache:put:security-advisory:glob:d52X5h0bJaHPj03zWzeqOtOLWxBhwG2IrbYhJ5jLS3ATutv2/+WtDNd7RTof8qd8wn31VXDbKAkJyShr+ZNTJA== 1761422714085
13267 silly unfinished npm timer metavuln:cache:put:security-advisory:eslint-plugin-import:vH81o+2gsRDuWzc+cKRZ0G3hF+qO1Krw2XBsQo6P8fogLz1HQszkCoIOXWR7O1UnKdrK6aySQHYdInY3PMcJcQ== 1761422714091
13268 verbose cwd /home/al/simple-crm-nodejs-reactjs-mongodb/frontend
13269 verbose os Linux 6.12.0-142.el10.x86_64
13270 verbose node v22.16.0
13271 verbose npm  v10.9.2
13272 verbose exit 1
13273 verbose code 1
13274 error A complete log of this run can be found in: /home/al/.npm/_logs/2025-10-25T20_03_46_175Z-debug-0.log
