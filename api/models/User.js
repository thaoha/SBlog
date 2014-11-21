var bcrypt = require('bcryptjs');

module.exports = {
    attributes: {
        avatar: {
            model: 'file'
        },
        name: {
            type: 'string',
            required: true,
            minLength: 3,
            maxLength: 20
        },
        alias: {
            type: 'string'
        },
        email: {
            type: 'string',
            required: true,
            unique: true,
            email: true
        },
        password: {
            type: 'string'
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

    beforeCreate: function(user, next) {

        async.waterfall([
            function createAlias(fn) {
                user.alias = user.name.replace(" ", "_").toLowerCase();
                fn(null);
            },
            function checkEmail(fn) {
                User.findOne({email: user.email}, function(err, data) {
                    if (err) fn(err);
                    if (data) fn(new Error('Email was already exist'));
                    fn(null);
                });
            },
            function hashPassword(fn) {
                bcrypt.genSalt(10, function(err, salt) {
                    bcrypt.hash(user.password, salt, function(err, hash) {
                        if (err) {
                            fn(err);
                        } else {
                            user.password = hash;
                            fn(null);
                        }
                    });
                });
            }
        ], function(err, result) {
            next(err, user);
        });
    },

    beforeUpdate: function(user, next) {

        if (typeof user.password !== 'undefined' && user.password) {
            bcrypt.genSalt(10, function(err, salt) {
                bcrypt.hash(user.password, salt, function(err, hash) {
                    if (err) {
                        next(err);
                    } else {
                        user.password = hash;
                        next(null, user);
                    }
                });
            });

        } else {
            delete user.password;
            next(null, user);
        }
    }
};
