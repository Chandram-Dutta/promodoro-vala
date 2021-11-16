# Promodoro

![Screenshot](data/Screenshot.png?raw=true)

## Building, Testing, and Installation

You'll need the following dependencies:

* libgranite-dev >= 0.com.github.Chandram-Dutta.promodoro-vala5
* libhandy-1-dev >= 0.91.0
* meson >= 0.43.0
* valac

Run `meson build` to configure the build environment. Change to the build directory and run `ninja test` to build and run automated tests

    meson build --prefix=/usr
    cd build
    ninja test

To install, use `ninja install`, then execute with `com.github.Chandram-Dutta.promodoro-vala`

    sudo ninja install
    ./com.github.Chandram-Dutta.promodoro-vala
