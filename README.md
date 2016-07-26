Basic setup for my Mac

Add ssh-keys to ~/.ssh and change the private key file permissions to user read only ( chmod 400 ~/.ssh/id_rsea)

Run setup.sh

Change settings:
For Alfred
 1. Unset Cmd+Space as spotlight shortcut
 2. Set Cmd+Space as alfred shortcut

For Spectacle
 1. Fullscreen  => Ctrl + Cmd + Enter
    Left Half   => Ctrl + Cmd + Left Arrow
    Right Half  => Ctrl + Cmd + Right Arrow
    Top Half    => Ctrl + Cmd + Top Arrow
    Bottom Half => Ctrl + Cmd + Bottom Arrow
 2. a) Click right arrow on lower right corner
    b) Check "Launch Spectacle at login"


For iTerm
 1. Open preferences
 2. Select Profiles
 3. Select Colors
 4. Select Solarized Light from Color Presets

General
 1. Open 'Dock' Settings and check 'automatically hide and show the Dock'
 2. Open 'Keyboard' Settings and adapt
    a) Key Repeat -> Fastest
    b) Delay Until Repeat -> Shortest

Keyboard Layout
 1. Open 'https://hci.rwth-aachen.de/USGermanKeyboard'
 2. Download the .zip file and unzip it
 3. Copy Roman.bundle into '/Library/Keyboard Layouts'
    i.e. sudo cp -R ~/Downloads/USGerman\ Keyboard\ Layout\ 0.98/Roman.bundle /Library/Keyboard\ Layouts
 4. Close all Applications
 5. a) Open 'Keyboard Settings'
    b) Select 'Input Sources'
    c) Add a new source (+)
    d) Click Other
    e) Select 'U.S. with Umlauts via Option Key'
