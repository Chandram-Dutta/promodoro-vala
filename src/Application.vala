public class Promodoro : Gtk.Application {
    public Promodoro () {
        Object (
            application_id: "com.github.Chandram-Dutta.promodoro-vala",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            title = "Promodoro"
        };
        var header_bar = new Gtk.HeaderBar();
        header_bar.set_title("Promodoro");
        header_bar.set_subtitle("A Convinient App");
        header_bar.set_show_close_button(true);
        
        Gtk.Box vbox = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);
        vbox.pack_start (new Gtk.Label ("1"), true, false, 0);
        vbox.pack_start (new Gtk.Label ("2"), false, false, 0);
        vbox.pack_start (new Gtk.Label ("3"), true, false, 0);
        
        main_window.set_titlebar(header_bar);
        main_window.add(vbox);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new Promodoro ().run (args);
    }
}
