using GLib;
using Gtk;

public interface IApplicationView : Object {
    public abstract void show();
    public abstract void showDialog();
}

public class ApplicationView : Gtk.ApplicationWindow, IApplicationView{
    public ApplicationView (Gtk.Application app) {
        this.application = app;
        this.title = "Hello, World!";
        this.set_default_size (400, 200);

        var button = new Gtk.Button.with_label ("Hello, World!");
        button.clicked.connect (() => {
            stdout.printf("btn_clicked!!!\n");
        });

        this.set_child (button);
    }

    public new void show(){
        this.present();
    }

    public void showDialog(){
        //this.close();
    }
}