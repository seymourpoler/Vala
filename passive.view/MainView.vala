using GLib;
using Gtk;

public interface IMainView : Object {
    public abstract void show();
    public abstract void showDialog();
}

public class MainView : Gtk.Window, IMainView {
    private Button button;

    public MainView(){
        this.title = "Passive View Example";
        this.set_default_size(400, 200);
        button = new Button.with_label("Open Dialog");
        this.set_child(button);
    }

    public new void show(){
        this.present();
    }

    public void showDialog(){
    }
}