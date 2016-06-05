/* eslint no-undef:0 */
import API from './services/jira-api';

const Auth = (() => {
    'use strict';

    const Observable = require('FuseJS/Observable');
    const userData = {
        username: Observable(''),
        password: Observable(''),
        subdomain: Observable('')
    };

    const login = () => {
        debug_log(`Username: ${userData.username.value}`);
        debug_log(`Password: ${userData.password.value}`);
        debug_log(`Subdomain: ${API.checkURL(userData.subdomain.value)}`);
    };

    const logout = () => 'User has logged out';

    return {
        userData,
        login,
        logout
    };
})();

export default Auth;

module.exports.Auth = Auth;
