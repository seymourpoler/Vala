using GLib;

public class MainPresenter : Object {
    private IMainView view;

    public MainPresenter(IMainView view){
        this.view = view;
    }
    
    public void show(){
        view.show();
    }

    public void showDialog(){
        view.showDialog();
    }
}