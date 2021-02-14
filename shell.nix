let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    name = "gnomecast";
    buildInputs = with pkgs; [
      ffmpeg
      gobject-introspection
      gtk3
      python38Packages.bottle
      python38Packages.dbus-python
      python38Packages.html5lib
      python38Packages.pycaption
      python38Packages.PyChromecast
      python38Packages.pygobject3
      python38Packages.virtualenv
      gsettings-desktop-schemas
      librsvg
    ];

    shellHook = ''
      virtualenv venv
      source venv/bin/activate
    '';
  }
