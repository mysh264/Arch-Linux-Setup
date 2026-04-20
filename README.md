# Arch-Linux-Setup
My Personal Arch Linux "EndeavourOS" "KDE Plasma" "Wayland" Setup.

## Fresh install.

### Pacman
```
sudo pacman -S mpv xclip mpv-mpris gparted gpart udftools gnome-disk-utility discover fwupd flatpak kfind qbittorrent sniffnet thunderbird thunderbird-i18n-en-us thunderbird-i18n-ar hunspell-en_us yakuake fish fisher fastfetch chafa  flatpak-kcm plasma-applet-window-buttons catfish zeitgeist speech-dispatcher festival espeak-ng
```
### AUR
```
yay -S pamac-all grub-customizer jdownloader2 kde-material-you-colors hunspell-ar ventoy-bin --noconfirm
```
### Flatpak
```
flatpak install app.zen_browser.zen com.github.tchx84.Flatseal com.stremio.Stremio io.github.cboxdoerfer.FSearch org.gnome.Boxes.Extension.OsinfoDb
```

## Enable Bluetooth.
```
sudo systemctl enable bluetooth
```
```
sudo systemctl start bluetooth
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

## install [Sheets](https://github.com/maaslalani/sheets).
```
brew install sheets
```

## install [skwd-wall](https://github.com/liixini/skwd-wall).
```
# Install Skwd-wall and all its dependencies
yay -S skwd-wall

# Enable Skwd-daemon:
systemctl --user enable --now skwd-daemon.service

# Launch Skwd-wall. Bind this command to a key in your compositor for quick access:
skwd wall toggle
```

## MPV config
### Clone my config
```
cd $HOME/.config/mpv
```
```
git clone https://github.com/mysh264/mpv-config.git
```
```
mv mpv-config/* .
```
```
mv mpv-config/.* .
```
```
cd
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

## To do "Add"
* Github mpv conf
* GitHub wallpapers to .wallpapers
  https://github.com/vimlinuz/wall-archive
  https://github.com/eurohouse/baron

  ~/Pictures/Wallpapers
  https://github.com/liixini/skwd-wall#base-wallpaper-path

* Modify grub
  https://github.com/ahmedmoselhi/distro-grub-themes
  https://k1ng.dev/distro-grub-themes/preview
  
* add firefox extinctions
  [Adaptive Tab Bar Color](https://addons.mozilla.org/en-US/firefox/addon/adaptive-tab-bar-colour/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
  
  [Time Tracker - Web Habit Builder](https://addons.mozilla.org/en-US/firefox/addon/besttimetracker/)
  
  
## Droped
```
plasma6-applets-panel-colorizer
mpv-mpris2-bin
kwin-scripts-krohnkite 
```
