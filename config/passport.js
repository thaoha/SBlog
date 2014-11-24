var passport    = require('passport'),
    LocalStrategy = require('passport-local').Strategy,
    bcrypt = require('bcryptjs');

passport.serializeUser(function(user, done) {
    done(null, user.id);
});

passport.deserializeUser(function(id, done) {
    User.findOne({id: id}).populate('avatar').exec(function (err, user) {
        done(err, user);
    });
});

passport.use(new LocalStrategy({
        usernameField: 'email',
        passwordField: 'password'
    },
    function(email, password, done) {
        User.findOne({email: email}).exec(function(err, user) {
            if (err) { return done(null, err); }
            if (!user || user.length < 1) {
                return done(null, false, {message: 'Incorrect User'});
            }
            bcrypt.compare(password, user.password, function(err, res) {
                if (!res) return done(null, false, {message: 'Invalid Password'});
                return done(null, user);
            });
        });
    }
));

module.exports = {
    express: {
        customMiddleware: function(app){
            app.use(passport.initialize());
            app.use(passport.session());
        }
    }
};