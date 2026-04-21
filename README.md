# Arch-Linux-Setup
My Personal Arch Linux "EndeavourOS" "KDE Plasma" "Wayland" Setup.

## Fresh install.

### Pacman
```
sudo pacman -S mpv xclip mpv-mpris gparted gpart udftools gnome-disk-utility discover fwupd flatpak kfind qbittorrent sniffnet thunderbird thunderbird-i18n-en-us thunderbird-i18n-ar hunspell-en_us yakuake fish fisher fastfetch chafa flatpak-kcm plymouth-kcm plasma-applet-window-buttons catfish zeitgeist speech-dispatcher festival espeak-ng
```
### AUR
```
yay -S pamac-all grub-customizer jdownloader2 kde-material-you-colors kwin-scripts-krohnkite plasma6-applets-panel-spacer-extended plasma6-applets-kurve hunspell-ar ventoy-bin --noconfirm
```
### Flatpak
```
flatpak install app.zen_browser.zen com.github.tchx84.Flatseal com.stremio.Stremio io.github.cboxdoerfer.FSearch org.gnome.Boxes.Extension.OsinfoDb dev.zed.Zed
```

## Enable Bluetooth.
```
sudo systemctl enable bluetooth ; sudo systemctl start bluetooth
```

## Shell Pt. 1
### Using fish instead of Bash.
```
chsh -s $(which fish)
```

## Shell Pt. 2
### Install [Oh my fish](https://github.com/oh-my-fish/oh-my-fish).
```
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

## Shell Pt. 3
### Edit fish config file.
Disable Greating & Enable Fastfetch.
```
nano $HOME/.config/fish/config.fish
```
```
if status is-interactive
# Commands to run in interactive sessions can go here
set -U fish_greeting
fastfetch
end
```

## Install [brew](https://brew.sh/).

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
```
echo >> $HOME/.config/fish/config.fish
```
```
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"' >> $HOME/.config/fish/config.fish
```
```
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
```
Refrence
```
Warning: /home/linuxbrew/.linuxbrew/bin is not in your PATH.
  Instructions on how to configure your shell for Homebrew
  can be found in the 'Next steps' section below.
==> Installation successful!

==> Homebrew has enabled anonymous aggregate formulae and cask analytics.
Read the analytics documentation (and how to opt-out) here:
  https://docs.brew.sh/Analytics
No analytics data has been sent yet (nor will any be during this install run).

==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations

==> Next steps:
- Run these commands in your terminal to add Homebrew to your PATH:
    echo >> /home/mahmoud/.bashrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> /home/mahmoud/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
- Install Homebrew's dependencies if you have sudo access:
    sudo pacman -S base-devel
  For more information, see:
    https://docs.brew.sh/Homebrew-on-Linux
- We recommend that you install GCC:
    brew install gcc
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh
```

## Install [Sheets](https://github.com/maaslalani/sheets).
```
brew install sheets
```

## Install [Skwd-wall](https://github.com/liixini/skwd-wall).
```
# Install Skwd-wall and all its dependencies
yay -S skwd-wall

# Enable Skwd-daemon:
systemctl --user enable --now skwd-daemon.service

# Launch Skwd-wall. Bind this command to a key in your compositor for quick access:
skwd wall toggle
```

## MPV config
### ~~Clone my config "Using bash script"~~

~~https://github.com/mysh264/Arch-Linux-Setup/blob/main/Fresh_install_mpv_conf.sh~~

```
#!/bin/bash
#set -x

# Only for the first time, can't use it for update.
# TO DO
  # 1. Make it to update the MPV conf.

# ENV
gitrepo=https://github.com/mysh264/mpv-config.git
mpvconf=$HOME/.config/mpv
gitmpvconf=$mpvconf/mpv-config

# Make MPV config Folder.

if [ -d $mpvconf ]; then
    echo "MPV Config directory exists."
    cd $mpvconf
    else
    echo "MPV Config directory does not exist."
    echo "Making MPV Config directory."
        mkdir $mpvconf
    echo "DONE."
    cd $mpvconf
    fi

############################################

git clone $gitrepo ;
echo "Git clone Done" ;
mv -f $gitmpvconf/{*,.*} . ;
echo "Move all files from $gitmpvconf to $mpvconf DONE" ;
rm -rvf $gitmpvconf ;
echo "Remove $gitmpvconf DONE" ;
cd ;
```

### Clone my config "Manually".
```
cd $HOME/.config/mpv
```
```
git clone https://github.com/mysh264/mpv-config.git
```
```
mv mpv-config/{*,.*} .
```
```
rm -rvf mpv-config
```
```
cd
```

## Wallpaper Collections
### ~~Using bash script~~
* Later

### Using Terminal. "Manually"
make $HOME/.Wallpapers Folder.
```
mkdir $HOME/.Wallpapers
```
Open $HOME/.Wallpapers.
```
cd $HOME/.Wallpapers
```
Clone [Wallpaper Archive.](https://github.com/vimlinuz/wall-archive)
```
git clone https://github.com/vimlinuz/wall-archive.git
```
Clone [Wavo Wallpaper Collection.](https://github.com/thor-op/w)
```
git clone https://github.com/thor-op/w.git
```
~~Clone [Eurohouse Wallpaper Collection.](https://github.com/eurohouse/baron)~~
~~```git clone https://github.com/eurohouse/baron.git```~~
Return to $HOME.
```
cd
```

### Download Them Manually.
* [Wallpaper Archive.](https://github.com/vimlinuz/wall-archive)
* [Wavo Wallpaper Collection.](https://github.com/thor-op/w)
* ~~[Eurohouse Wallpaper Collection.](https://github.com/eurohouse/baron)~~

## Setup [Plymouth.](https://wiki.archlinux.org/title/Plymouth)
* Later
* Reference
  * https://www.reddit.com/r/EndeavourOS/comments/1ejxi95/guide_for_setting_up_plymouth_and_suggestions_to/
  * https://www.reddit.com/r/EndeavourOS/comments/1oerbcj/plymouth_install_and_make_functional/
  * https://github.com/Overc1ocker/kameleon-eos

## KDE Plasma Add-On

### KCMs
- [Flatpak KCM](https://github.com/KDE/flatpak-kcm)
  ```
  sudo pacman -S flatpak-kcm
  ```

- [Plymouth KCM](https://github.com/KDE/plymouth-kcm)
  ```
  sudo pacman -S plymouth-kcm
  ```

### WM like i3
- [Kröhnkite](https://github.com/esjeon/krohnkite)
  * [KDE Store](https://store.kde.org/p/2144146/)
```
yay -S kwin-scripts-krohnkite
```

### Color Theme
- [KDE Material You Colors.](https://github.com/luisbocanegra/kde-material-you-colors)
  * [KDE Store](https://store.kde.org/p/2073783)
  * [Reddit](https://www.reddit.com/r/kde/comments/1qappo7/kde_material_you_colors_theme_compatibility/)
  ```
  yay -S kde-material-you-colors
  ```

### Panel Modification.
- [Window Buttons Applet.](https://github.com/moodyhunter/applet-window-buttons6)
  * [KDE Store](https://store.kde.org/p/1272871/)
  ```
  yay -S plasma-applet-window-buttons
  ```

- [Panel Spacer Extended](https://github.com/luisbocanegra/plasma-panel-spacer-extended)
  * [KDE Store](https://store.kde.org/p/2128047)
```
yay -S plasma6-applets-panel-spacer-extended
```

- [Kurve](https://github.com/luisbocanegra/kurve)
  * [KDE Store](https://store.kde.org/p/2299506)
```
yay -S plasma6-applets-kurve
```

- [Panel Colorizer](https://github.com/luisbocanegra/plasma-panel-colorizer)
  * [KDE Store](https://store.kde.org/p/2130967)
```
yay -S plasma6-applets-panel-colorizer
```
### Video Wallpaper

- [Smart Video Wallpaper Reborn.](https://github.com/luisbocanegra/plasma-smart-video-wallpaper-reborn)
  * [KDE Store.](https://store.kde.org/p/2139746)
  ```
  yay -S plasma6-wallpapers-smart-video-wallpaper-reborn
  ```

## Gnome Add-On
* Later

## KDE Plasma Modification

### To remove titles and borders from all windows in KDE Plasma

    Permanent Method (Rules):
    Open System Settings.
    Go to Window Management > Window Rules.
    Click + Add New...
    Description: Type something like "No Borders".
    Window class: Choose Regular Expression and enter .*.
    Click + Add Property and select No titlebar and frame.
    Set the property to Force and Yes.
    Apply and Save. 

## Firefox extensions.
1. [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
2. [YouTube Enhancer 💻](https://addons.mozilla.org/en-US/firefox/addon/youtube-enhancer-vc/?utm_source=addons.mozilla.org)
3. [Simple Translate](https://addons.mozilla.org/en-US/firefox/addon/simple-translate/)
4. [Grammarly: AI Writing and Grammar Checker App](https://addons.mozilla.org/en-US/firefox/addon/grammarly-1/)
5. [Adaptive Tab Bar Color](https://addons.mozilla.org/en-US/firefox/addon/adaptive-tab-bar-colour/)
6. [Time Tracker - Web Habit Builder](https://addons.mozilla.org/en-US/firefox/addon/besttimetracker/)
7. [Server IP](https://addons.mozilla.org/en-US/firefox/addon/server-ip/)
8. [User-Agent Switcher and Manager](https://addons.mozilla.org/en-US/firefox/addon/user-agent-string-switcher/)
9. [Allow Right-Click](https://addons.mozilla.org/en-US/firefox/addon/re-enable-right-click/)
10. [Open Link with New Tab](https://addons.mozilla.org/en-US/firefox/addon/open-link-with-new-tab/)
11. [I still don't care about cookies](https://addons.mozilla.org/en-US/firefox/addon/istilldontcareaboutcookies/)
12. [Search by Image](https://addons.mozilla.org/en-US/firefox/addon/search_by_image/)

## Google Chrome Extension. 
* Later

## Firefox extensions. (Dropped)
* ~~[OneTab](https://addons.mozilla.org/en-US/firefox/addon/onetab/)~~
* ~~[Sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery/)~~
* ~~[Grammar and Spell Checker - LanguageTool](https://addons.mozilla.org/en-US/firefox/addon/languagetool/)~~
* ~~['Improve YouTube!' 🎧 (For YouTube & Video)](https://addons.mozilla.org/en-US/firefox/addon/youtube-addon/)~~
* ~~[DownThemAll!](https://addons.mozilla.org/en-US/firefox/addon/downthemall/)~~
* ~~[Video DownloadHelper](https://addons.mozilla.org/en-US/firefox/addon/video-downloadhelper/)~~
* ~~[Instagram Downloader](https://addons.mozilla.org/en-US/firefox/addon/ins-downloader/)~~
* ~~[Cookie-Editor](https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/)~~
* ~~[OCR - Image Reader](https://addons.mozilla.org/en-US/firefox/addon/ocr-image-reader/)~~
* ~~[Font Finder (revived)](https://addons.mozilla.org/en-US/firefox/addon/font-inspect/)~~
* ~~[Enpass Password Manager](https://addons.mozilla.org/en-US/firefox/addon/enpass_password_manager/)~~
* ~~[Country Flags & IP Whois](https://addons.mozilla.org/en-US/firefox/addon/country-flags-ip-whois/)~~
* ~~[Read Aloud: A Text to Speech Voice Reader](https://addons.mozilla.org/en-US/firefox/addon/read-aloud/)~~
* ~~[Wayback Machine](https://addons.mozilla.org/en-US/firefox/addon/wayback-machine_new/)~~

## Apps Dropped.
```
plasma6-applets-panel-colorizer
mpv-mpris2-bin
kwin-scripts-krohnkite 
```

## Reference.

* [Sniffnet](https://sniffnet.net/)
  https://github.com/GyulyVGC/sniffnet

* fisher
  https://github.com/jorgebucaran/fisher

* fastfetch
  https://github.com/fastfetch-cli/fastfetch

* mpv-mpris
  https://github.com/hoyon/mpv-mpris

* mpv-mpris2
  https://github.com/eNV25/mpv-mpris2

* kde-material-you-colors
  https://github.com/luisbocanegra/kde-material-you-colors

* ventoy-bin
  https://www.ventoy.net/en/index.html

* app.zen_browser.zen
  https://zen-browser.app/

* brew
  https://brew.sh/

* sheets
  https://github.com/maaslalani/sheets

* speech-dispatcher
  https://wiki.archlinux.org/title/Speech_dispatcher

* skwd-wall
  https://github.com/liixini/skwd-wall

* plasma6-wallpapers-smart-video-wallpaper-reborn
  https://github.com/luisbocanegra/plasma-smart-video-wallpaper-reborn

* plasma-applet-window-buttons
  Plasma applet to show window buttons in your panels.
  https://github.com/moodyhunter/applet-window-buttons6

* [Zed](https://zed.dev/)
  - ```curl -f https://zed.dev/install.sh | sh```

  - https://flathub.org/en/apps/dev.zed.Zed
    - ```flatpak install dev.zed.Zed```

  - https://zed.dev/docs/linux#other-ways-to-install-zed-on-linux
    - https://archlinux.org/packages/extra/x86_64/zed/
      - ```sudo pacman -S zed```

## To do "Add".
- [ ] Google Chrome extensions.

- [ ] Set up Plymouth.

- [ ] Modify Grub theme.
  * https://github.com/ahmedmoselhi/distro-grub-themes
  * https://k1ng.dev/distro-grub-themes/preview

- [ ] Add Qt5-WebEngine links. "Take so Long to build through yay (AUR)."
  * https://aur.archlinux.org/packages/qt5-webengine
  * https://sourceforge.net/projects/fabiololix-os-archive/files/Packages/

- [ ] Add Marksman installing for Kate "Markdown" support
- DID NOT Work "Used zed instead."
  * https://github.com/artempyanykh/marksman
  * https://github.com/artempyanykh/marksman/blob/main/docs/install.md
    * brew install marksman
  * https://www.reddit.com/r/kde/comments/rjsm25/how_do_i_use_kmarkdownpart/
    * sudo pacman -S markdownpart

- [ ] Gnome Add-on
- [ ] youtube-tui
  * https://www.xda-developers.com/watch-youtube-from-the-terminal-because-am-man-of-culture/
  * yay -S youtube-tui
  * https://github.com/Siriusmart/youtube-tui

- [ ] ytsurf "yay -S ytsurf"
  * https://github.com/Stan-breaks/ytsurf
- [ ] Clean Reference from duplicate Links.
- [ ] Clean Apps Droped.

## Semi Done
- [x] ~~GitHub wallpapers to ($HOME/.Wallpapers).~~
  * ~~Wallpaper Archive.~~
    * ~~https://github.com/vimlinuz/wall-archive~~
  * ~~Eurohouse Wallpaper Collection.~~
    * ~~https://github.com/eurohouse/baron~~
  * ~~Wavo Wallpaper Collection.~~
    * ~~https://github.com/thor-op/w~~
  - [ ] Bash Script, to download them and clean them from extra files & Folders.
    - [ ] Or just clone The Wallpapers Folder.

## Done.
- [x] ~~Firefox extensions.~~
- [x] ~~Github mpv conf~~
- [x] ~~Skwd-wall ($HOME/Pictures/Wallpapers).~~
  * ~~https://github.com/liixini/skwd-wall~~
  * ~~https://github.com/liixini/skwd-wall#base-wallpaper-path~~
- [x] ~~No title and border KDE Plasma for all windows~~
- [x] ~~Eanable Bluetooth~~
- [x] ~~Using Fish instead Bash~~
- [x] ~~Modify Fish~~
- [x] ~~Install Oh my fish~~
- [x] ~~Install Brew~~
- [x] ~~Install Sheets~~
- [x] ~~KDE Plasma KCMs~~
- [x] ~~KDE Plasma Addons~~
- [x] ~~Panle Modifiction~~
- [x] ~~KDE Plasma Modification~~
  - [x] ~~To remove titles and borders from all windows in KDE Plasma~~



