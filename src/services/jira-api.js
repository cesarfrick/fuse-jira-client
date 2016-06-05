/* eslint no-console:0 */

const API = (function() {
    'use strict';

    const request = (resource) => {
        const url = `http://atlassian.net/rest/api/2/${resource}`;

        fetch(url)
        .then((result) => {
            if(result.status === 200) {
                return result.data;
            } else {
                return {};
            }
        });
    };

    const checkURL = url => {
        return `Check URL: ${url}`;
    };

    const dashboards = () => JSON.parse(request('dashboadrs'));

    const tasks = () => JSON.parse(request('tasks'));

    return {
        checkURL: checkURL,
        dashboards: dashboards,
        tasks: tasks
    };
})();

export default API;

module.exports.API = API;
