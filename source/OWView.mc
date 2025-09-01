using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;

class OWMainView extends Ui.View {
    function onLayout(dc as Gfx.Dc) as Void {
        setLayout( Rez.Layouts.MainLayout );
    }
    function onUpdate(dc as Gfx.Dc) as Void {
        var ver = Sys.getDeviceSettings().monkeyVersion; // [major, minor, micro]
        var txt = "CIQ " + ver[0] + "." + ver[1] + "." + ver[2];
        var b = dc.getCanvas();
        dc.drawText(b.getWidth()/2, b.getHeight()-24, Gfx.FONT_SMALL, txt, Gfx.TEXT_JUSTIFY_CENTER);
    }
}
