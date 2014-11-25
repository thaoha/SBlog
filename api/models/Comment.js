/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = {
    attributes: {
        content: {
            type: 'string'
        },
        user: {
            model: 'user'
        },
        post: {
            model: 'post'
        }
    }
};