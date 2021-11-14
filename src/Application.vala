public class Promodoro : Gtk.Application {

	public Promodoro () {
		Object (
			application_id: "com.github.Chandram-Dutta.promodoro-vala",
			flags: ApplicationFlags.FLAGS_NONE
		);
	}

	protected override void activate () {
		var window = new MyApp.Window (this);

		add_window (window);
	}
}
