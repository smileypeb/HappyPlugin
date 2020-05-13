var exec = require('cordova/exec');

var pluginNameSwift = "HappyPluginSwift"
var pluginNameObjectiveC = "HappyPlugin"

var HappyPlugin = {
    happySwiftMethod: function(arg0, success, error) {
      exec(success, error, pluginNameSwift, "happySwiftMethod", [arg0]);
    },
    happyMethod: function(arg0, success, error) {
        exec(success, error, pluginNameObjectiveC, "happyMethod", [arg0]);
    },
    happyMethodjs: function(arg0, success, error) {
        if (arg0 && typeof(arg0) === 'string' && arg0.length > 0) {
            success(arg0);
        } else {
            error('Empty message!');
        }
     }
};

module.exports = HappyPlugin