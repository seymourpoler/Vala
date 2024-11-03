using GLib;

public class MainPresenterTest : Object {

    public static int run(string[] args){
        GLib.Test.init(ref args);
    
        GLib.Test.add_func("/MainPresenter/opens/dialog", () =>{ 
            assert(false);
        });
        
        return GLib.Test.run();
    }
}

