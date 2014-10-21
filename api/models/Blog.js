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
            maxLength: 50
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
        admin: {
            model: 'user'
        },
        members: {
            collection: 'user',
            via: 'blogs'
        },
        active: {
            type: 'boolean',
            defaultsTo: true
        }
    }
};