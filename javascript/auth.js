'use strict';

Object.defineProperty(exports, "__esModule", {
    value: true
});

var _jiraApi = require('./services/jira-api');

var _jiraApi2 = _interopRequireDefault(_jiraApi);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var Auth = function () {
    'use strict';

    var Observable = require('FuseJS/Observable');
    var userData = {
        username: Observable(''),
        password: Observable(''),
        subdomain: Observable('')
    };

    var login = function login() {
        debug_log('Username: ' + userData.username.value);
        debug_log('Password: ' + userData.password.value);
        debug_log('Subdomain: ' + _jiraApi2.default.checkURL(userData.subdomain.value));
    };

    var logout = function logout() {
        return 'User has logged out';
    };

    return {
        userData: userData,
        login: login,
        logout: logout
    };
}(); /* eslint no-undef:0 */


exports.default = Auth;


module.exports.Auth = Auth;