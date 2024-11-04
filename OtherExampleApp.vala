//$ valac --pkg gtk4 OtherExampleApp.vala -o OtherExampleApp

/*
int main (string[] argv) {
    var app = new Gtk.Application ("com.example.GtkApplication",
                                   GLib.ApplicationFlags.FLAGS_NONE);

    app.activate.connect (() => {
        // Create a new window
        var window = new Gtk.ApplicationWindow (app);

        // Create a new button
        var button = new Gtk.Button.with_label ("Hello, World!");

        // When the button is clicked, close the window
        button.clicked.connect (() => {
            stdout.printf("btn_clicked!!!\n");
            window.close ();
        });

        window.set_child (button);
        window.present ();
    });

    return app.run (argv);
}
*/
int main (string[] argv) {
    var app = new Gtk.Application ("com.example.GtkApplication",
                                   GLib.ApplicationFlags.FLAGS_NONE);

    app.activate.connect (() => {
        var view = new ApplicationView (app);
        var presenter = new ApplicationPresenter (view);
        presenter.show ();
    });
    return app.run (argv);
}

public class ApplicationView : Gtk.ApplicationWindow {
    public ApplicationView (Gtk.Application app) {
        this.application = app;
        this.title = "Hello, World!";
        this.set_default_size (400, 200);

        var button = new Gtk.Button.with_label ("Hello, World!");
        button.clicked.connect (() => {
            stdout.printf("btn_clicked!!!\n");
            //this.close ();
        });

        this.set_child (button);
    }
}

public class ApplicationPresenter {
    private ApplicationView view;

    public ApplicationPresenter (ApplicationView view) {
        this.view = view;
    }

    public void show () {
        view.present();
    }
}