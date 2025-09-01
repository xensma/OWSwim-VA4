using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class OWSwimApp extends App.AppBase {
    function initialize() { App.AppBase.initialize(); }
    function onStart(state) { }
    function onStop(state)  { }
    function getInitialView() { return new OWMainView(); }
}
