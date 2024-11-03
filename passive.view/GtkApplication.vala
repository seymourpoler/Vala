public class GtkApplication : Gtk.Application {
    public GtkApplication () {
      Object (application_id: "com.example.App");
    }
  
    public override void activate () {
      var win = new Gtk.ApplicationWindow (this);
  
      var btn = new Gtk.Button.with_label ("Hello World");
      btn.clicked.connect (win.close);
  
      win.child = btn;
      win.present ();
    }
  }
  