using GLib;

public class MainPresenterTest : Object {

    public static int run(string[] args){
        GLib.Test.init(ref args);
    
        GLib.Test.add_func("/MainPresenter/show", () =>{ 
            var view = new MainVieMock();  
            var presenter = new MainPresenter(view);
            
            presenter.show();

            assert(view.showCalled);

        });

        GLib.Test.add_func("/MainPresenter/show-dialog", () =>{ 
            var view = new MainVieMock();  
            var presenter = new MainPresenter(view);
            
            presenter.showDialog();

            assert(view.showDialogCalled);

        });
        
        return GLib.Test.run();
    }
}

private class MainVieMock : Object, IMainView {
    public bool showCalled { get; private set; }
    public bool showDialogCalled { get; private set; }

    public void show(){
        this.showCalled = true; 
    }
    
    public void showDialog(){
        this.showDialogCalled = true;
    }
}

