```
nix-config/
├── flake.nix
├── flake.lock
├── configuration.nix
├── home.nix
├── LICENSE
├── README.md
│
├── hosts/
│   ├── disk-config.nix                    #   now shared across hosts (was per-host)
│   ├── desk/
│   │   ├── default.nix
│   │   ├── hardware-configuration.nix
│   │   └── wallpapers-desk.nix            #   Syncthing: auto-syncs Pictures/Videos
│   │
│   └── t480/
│       ├── default.nix
│       ├── hardware-configuration.nix
│       └── wallpapers-t480.nix
│
├── home/
│   ├── packages.nix        #   User packages (CLI tools, GUI apps)
│   ├── programs.nix        #   Program configs (git, mpv)
│   ├── services.nix        #   User services (easyeffects)
│   ├── gtk.nix
│   ├── dotfile-links.nix   #   Symlinks dotfiles/ → ~/.config via mkOutOfStoreSymlink
│   ├── zshAndShell.nix     #   Zsh + shell aliases/env
│   ├── mime-apps.nix       #   Default application associations
│   ├── vesktop.nix
│   ├── obs.nix
│   └── noctalia-tools.nix
│
├── modules/
│   ├── boot.nix
│   ├── networking.nix
│   ├── desktop.nix         #   Niri compositor, portal, lockscreen
│   ├── audio.nix
│   ├── fonts.nix
│   ├── users.nix           #   User + timezone
│   ├── packages.nix        #   System-wide packages
│   ├── nix-settings.nix    #   Garbage collection, trusted users, cachix
│   ├── graphics.nix        #   NVIDIA drivers + VA-API
│   ├── openrgb.nix
│   ├── sddm.nix            #   enabled
│   ├── nh.nix              #   clean build ui + garbage collector
│   ├── power.nix
│   └── mc-server.nix        #   new
│
├── dotfiles/.config/       #   Dotfiles symlinked into ~/.config
│
├── screenshots/
│   ├── 1s.png
│   ├── 2s.png
│   ├── 3s.png
│   ├── 4s.png
│   ├── open-close-nirianim.gif
│   └── resize-window-nirianim.gif

│
├── sounds/
│   └── mixkit-message-pop-alert-2354.wav
│
└── wallpapers/
    ├── bg.png
    └── satured.jpg


dotfiles/.config
├── btop
├── cava
├── clangd
├── easyeffects
├── fastfetch
├── fontconfig
├── ghostty
├── niri
├── noctalia
├── nvim
├── pictures
├── scripts
├── tmux
├── vesktop
├── wayscriber
└── yazi
```
