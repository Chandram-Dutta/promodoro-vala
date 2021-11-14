public class MyApp.Window : Gtk.ApplicationWindow {

	public Window (Promodoro app) {
		Object (
			application: app
		);
	}

	construct {
	 	title = "Promodoro";
	 	window_position = Gtk.WindowPosition.CENTER;
	 	set_default_size (400, 200);

        int work_time_label = 45;
        bool is_play = false;

//              HEADER BAR

	 	var header_bar = new Gtk.HeaderBar();
        header_bar.set_show_close_button(true);
        header_bar.set_title("Promodoro");
        unowned Gtk.StyleContext header_bar_context = header_bar.get_style_context ();
        header_bar_context.add_class ("default-decoration");
        header_bar_context.add_class (Gtk.STYLE_CLASS_FLAT);
        Gtk.Button settings_button = new Gtk.Button(){
            image = new Gtk.Image.from_icon_name ("emblem-system", Gtk.IconSize.SMALL_TOOLBAR),
            always_show_image = true,
        };
        header_bar.pack_end(settings_button);


        set_titlebar(header_bar);

//                  LABEL

        Gtk.Label work_time = new Gtk.Label (work_time_label.to_string ());



//              PLAY PAUSE RESET BUTTONS

        string play_pause_button_label = "Play";
        Gtk.Button play_pause_button = new Gtk.Button(){
            margin = 10,
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
            margin = 10,
            label = ("Reset"),
            image = new Gtk.Image.from_icon_name ("media-playlist-repeat", Gtk.IconSize.SMALL_TOOLBAR),
            always_show_image = true,
        };

//                  BOXES

        Gtk.Box hbox = new Gtk.Box(Gtk.Orientation.HORIZONTAL,0);
        Gtk.Box vbox = new Gtk.Box(Gtk.Orientation.VERTICAL,0);



        hbox.pack_start(play_pause_button, true, true, 0);
        hbox.pack_start(reset_button, true, true, 0);

//                  ADDING TO WINDOW
        vbox.pack_start(work_time);
        vbox.pack_end(hbox);
        add(vbox);
	 	show_all ();
	}
}
