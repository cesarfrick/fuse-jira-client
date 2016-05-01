'use strict';

Object.defineProperty(exports, "__esModule", {
    value: true
});
/* eslint no-console: 0 */
function Auth() {}

Auth.login = function () {
    return console.log('User logged in, or something');
};

exports.default = Auth;
'use strict';

var _auth = require('./auth');

var _auth2 = _interopRequireDefault(_auth);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

module.exports = {
    Auth: _auth2.default
}; //Use this as Main JS entry point
