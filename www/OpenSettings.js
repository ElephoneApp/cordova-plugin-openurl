var OpenSettings = {
  open: function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "OpenSettings", "open");
  },
}
module.exports = OpenSettings;
