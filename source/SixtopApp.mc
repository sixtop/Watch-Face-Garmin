using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class SixtopApp extends App.AppBase 
{
	var cjx;
	
    function initialize() 
    {
        AppBase.initialize();
    }

    //! onStart() is called on application start up
    function onStart(state) { }

    //! onStop() is called when your application is exiting
    function onStop(state) { }

    //! Return the initial view of your application here
    function getInitialView() 
    {
    	cjx = new SixtopView();
        return [ cjx ];
    }
    
    function onSettingsChanged() 
    {
    	cjx.settingsChanged = true;
        Ui.requestUpdate();
    }
}