/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = {
    attributes: {
        title: {
            type: 'string',
            required: true,
            minLength: 5,
            maxLength: 120
        },
        slug: {
            type: 'string',
            required: true,
            unique: true
        },
        description: {
            type: 'string'
        },
        keywords: {
            type: 'string'
        },
        user: {
            model: 'user'
        },
        blog: {
            model: 'blog'
        },
        published: {
            type: 'boolean',
            defaultsTo: false
        }
    }
};