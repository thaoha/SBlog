var bcrypt = require('bcryptjs');

module.exports = {
    attributes: {
        username: {
            type: 'string',
            required: true,
            unique: true,
            minLength: 3,
            maxLength: 20
        },
        password: {
            type: 'string',
            required: true
        },
        active: {
            type: 'boolean',
            defaultsTo: true
        },
        blogs: {
            collection: 'blog',
            via: 'members',
            dominant: true
        },
        admin: {
            type: 'boolean',
            defaultsTo: false
        },

        //Override toJSON method to remove password from API
        toJSON: function() {
            var obj = this.toObject();
            // Remove the password object value
            delete obj.password;
            // return the new object without password
            return obj;
        }
    },

    beforeCreate: function(user, cb) {
        bcrypt.genSalt(10, function(err, salt) {
            bcrypt.hash(user.password, salt, function(err, hash) {
                if (err) {
                    console.log(err);
                    cb(err);
                } else {
                    user.password = hash;
                    cb(null, user);
                }
            });
        });
    }
};
