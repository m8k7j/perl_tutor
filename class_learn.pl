push (@INC, 'pwd');
use Cocoa;
$cup = new Cocoa;   # $cup = Cocoa->new()
$cup->setImports('java.io.InputStream','java.net.*');
$cup->declareMain("Msg", "java.applet.Applet", "Runnable");
$cup->closeMain();