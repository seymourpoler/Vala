//$ valac --pkg gtk4 OtherExampleApp.vala -o OtherExampleApp

int main (string[] args) {
    if (args[1] == "--run-tests") {
        return ApplicationPresenterTest.run(args);
    }
    var app = new Gtk.Application ("com.example.GtkApplication",
                                   GLib.ApplicationFlags.FLAGS_NONE);

    app.activate.connect (() => {
        var view = new ApplicationView (app);
        var presenter = new ApplicationPresenter (view);
        presenter.show ();
    });
    return app.run (args);
}