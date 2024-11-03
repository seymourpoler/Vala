using GLib;

public class Program : Object {
    public static int main(string[] args){
        if (args.contains("--run-tests")) {
            return MainPresenterTest.run(args);
        }

        var app = new Gtk.Application("vala.example.PassiveView", 0);
        app.activate.connect(() => {
            var view = new MainView();  
            var presenter = new MainPresenter(view);
            presenter.show();
        });
        return app.run(args);
    }
}