public class Promodoro : Gtk.Application {
    public Promodoro () {
        Object (
            application_id: "com.github.Chandram-Dutta.promodoro-vala",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }



    protected override void activate () {
        string play_pause_button_label = "Play";

        var main_window = new Gtk.ApplicationWindow (this) {
            title = "Promodoro"
        };
        var header_bar = new Gtk.HeaderBar();
        // header_bar.set_title("Promodoro");
        // header_bar.set_subtitle("A Convinient App");
        header_bar.set_show_close_button(true);

        unowned Gtk.StyleContext header_bar_context = header_bar.get_style_context ();
        header_bar_context.add_class ("default-decoration");
        header_bar_context.add_class (Gtk.STYLE_CLASS_FLAT);


//******************************************************************************
        Gtk.Button play_pause_button = new Gtk.Button(){
            label = (play_pause_button_label),
            image = new Gtk.Image.from_icon_name ("media-playback-start", Gtk.IconSize.SMALL_TOOLBAR),
            always_show_image = true,
        };
        play_pause_button.clicked.connect(()=>{
            if (play_pause_button_label=="Play")
            {
                play_pause_button_label="Pause";
                play_pause_button.set_label(play_pause_button_label);
                play_pause_button.set_image(new Gtk.Image.from_icon_name ("media-playback-pause", Gtk.IconSize.SMALL_TOOLBAR));

            }else
            {
                play_pause_button_label="Play";
                play_pause_button.set_label(play_pause_button_label);
                play_pause_button.set_image(new Gtk.Image.from_icon_name ("media-playback-start", Gtk.IconSize.SMALL_TOOLBAR));
            }
        });
        
        Gtk.Button reset_button = new Gtk.Button(){
            label = ("Reset"),
            image = new Gtk.Image.from_icon_name ("media-playlist-repeat", Gtk.IconSize.SMALL_TOOLBAR),
            always_show_image = true,
        };
// ******************************************************************************   


        Gtk.Label promodoro_label = new Gtk.Label("Promodoro");

        Gtk.Box vbox = new Gtk.Box (Gtk.Orientation.VERTICAL, 5);
        
        Gtk.Box hbox2 = new Gtk.Box(Gtk.Orientation.HORIZONTAL,5);

        hbox2.pack_start(play_pause_button, true, true, 2);
        hbox2.pack_start(reset_button, true, true, 2);

       
        vbox.pack_start(promodoro_label);
        vbox.pack_end(hbox2, true,true,5);



        main_window.set_titlebar(header_bar);
        main_window.add(vbox);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new Promodoro ().run (args);
    }
}
