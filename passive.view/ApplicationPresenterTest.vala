using GLib;

public class ApplicationPresenterTest : Object {

    public static int run(string[] args){
        GLib.Test.init(ref args);
    
        GLib.Test.add_func("/ApplicationPresenter/show", () =>{ 
            var view = new ViewMock();  
            var presenter = new ApplicationPresenter(view);
            
            presenter.show();

            assert(view.showCalled);
        });

        GLib.Test.add_func("/ApplicationPresenter/show-dialog", () =>{ 
            var view = new ViewMock();  
            var presenter = new ApplicationPresenter(view);
            
            presenter.showDialog();

            assert(view.showDialogCalled);

        });
        
        return GLib.Test.run();
    }
}

private class ViewMock : Object, IApplicationView {
    public bool showCalled { get; private set; }
    public bool showDialogCalled { get; private set; }

    public void show(){
        this.showCalled = true; 
    }
    
    public void showDialog(){
        this.showDialogCalled = true;
    }
}