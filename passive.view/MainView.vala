using GLib;

public interface IMainView : Object {
    public abstract void show();
    public abstract void showDialog();
}

public class MainView : Object, IMainView {
    
    public MainView(){
    }

    public void show(){
    }

    public void showDialog(){
    }
}