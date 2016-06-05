'use strict';

Object.defineProperty(exports, "__esModule", {
    value: true
});
/* eslint no-console:0 */

var API = function () {
    'use strict';

    var request = function request(resource) {
        var url = 'http://atlassian.net/rest/api/2/' + resource;

        fetch(url).then(function (result) {
            if (result.status === 200) {
                return result.data;
            } else {
                return {};
            }
        });
    };

    var checkURL = function checkURL(url) {
        return 'Check URL: ' + url;
    };

    var dashboards = function dashboards() {
        return JSON.parse(request('dashboadrs'));
    };

    var tasks = function tasks() {
        return JSON.parse(request('tasks'));
    };

    return {
        checkURL: checkURL,
        dashboards: dashboards,
        tasks: tasks
    };
}();

exports.default = API;


module.exports.API = API;