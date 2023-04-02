# dotfiles

### **Debian install options:**
No check boxes except “Standard System Utilities”

### **From apt:**
```bash
sudo apt install htop git zsh vim tree curl wget tmux
```
### **From apt:** **(With GUI)**
```bash
sudo apt install plasma-desktop i3 flatpak nitrogen sddm network-manager plasma-nm gnome-keyring network-manager-openvpn
```
Note: If dunst installs itself, remove it

### **From flatpak:**
```bash
sudo flatpak remote-add --if-not-exists flathub [https://flathub.org/repo/flathub.flatpakrepo](https://flathub.org/repo/flathub.flatpakrepo "https://flathub.org/repo/flathub.flatpakrepo")
```
```
org.mozilla.firefox
org.videolan.VLC
org.kde.dolphin
com.discordapp.Discord
org.gimp.GIMP
org.onlyoffice.desktopeditors
org.wezfurlong.wezterm
com.nextcloud.desktopclient.nextcloud
com.visualstudio.code
com.valvesoftware.Steam
org.flameshot.Flameshot
com.obsproject.Studio
org.blender.Blender
com.github.tchx84.Flatseal
com.github.xournalpp.xournalpp
org.shotcut.Shotcut
io.github.shiftey.Desktop
org.gnome.gitlab.cheywood.Iotas
```
### **From github:**
In ~/.config
[https://github.com/IQuesadilla/dotfiles.git](https://github.com/IQuesadilla/dotfiles.git "https://github.com/IQuesadilla/dotfiles.git")
[https://github.com/zsh-users/zsh-syntax-highlighting.git](https://github.com/zsh-users/zsh-syntax-highlighting.git "https://github.com/zsh-users/zsh-syntax-highlighting.git")

In ~/.oh-my-zsh/custom/plugins
[https://github.com/zsh-users/zsh-autosuggestions.git](https://github.com/zsh-users/zsh-autosuggestions.git "https://github.com/zsh-users/zsh-autosuggestions.git")

Under releases, download the newest release
[https://github.com/yshui/picom/releases](https://github.com/yshui/picom/releases "https://github.com/yshui/picom/releases")
Follow the README instructions (might need to also install libxcb-xinerama0-dev)

### **Modifications:**
```bash
./scripts/install_omz.sh
```
```bash
sudo cp xsessions/plasma-with-i3.desktop /usr/share/xsessions
sudo dpkg-reconfigure sddm
sudo add-apt-repository contrib
sudo add-apt-repository non-free
```
```bash
ln -s ~/.config/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.config/dotfiles/i3 ~/.config/i3
ln -s ~/.config/dotfiles/htop ~/.config/htop
ln -s ~/.config/dotfiles/picom ~/.config/picom
ln -s ~/.config/dotfiles/nitrogen ~/.config/nitrogen
```

#### **— Reboot —**

### **KDE Preferences Alterations:**

- Global Theme -> Get New Global Themes -> Aritim-Dark
- Icons -> Get New Icons -> Papirus by Alexey -> Papirus -> Papirus Dark
- Shortcuts -> Shortcuts -> Disable all except
  -   Audio Volume
  -   Power Management
  -   Touchpad
  -   All Common Actions
- Shortcuts -> Custom Shortcuts -> Disable all
- Startup and Shutdown -> Login Screen (SDDM) -> Sugar Candy (1.6)
- Startup and Shutdown -> Splash Screen -> None
- Search -> File Search -> Enable File Search -> Disable
- Search -> Web Search Keywords -> Enable.. -> Disable
- Search -> KRunner -> History -> Enable -> Disable
- Search -> KRunner -> History -> Retain Previous Search -> Disable
- Power Management -> Energy Saving -> All tabs -> When power button... -> Prompt...
- Panel -> Edit Panel -> Move Pager next to notifications
- Panel -> Pager -> Configure Pager -> Show application icons... -> Enable
- Panel -> Pager -> Configure Pager -> Text display -> Desktop Name
- Panel -> Edit Panel -> Show Desktop -> Remove

### **Firefox Preferences:**

- General -> Digital Rights Management -> Play DRM content -> Enable
- General -> Language and Appearance -> Website Appearance -> Dark
- Home -> Homepage and new windows -> Custom URLs -> “quezadas.us”
- Home -> Recommended by Pocket -> Disable
- Search -> Default Search Engine -> DuckDuckGo
- Privacy & Security -> Logins and Passwords -> Ask to save... -> Disable
- Privacy & Security -> Autofill addresses,credit cards -> Disable
- Addons -> Themes -> Dark
- Addons -> Extensions -> Bitwarden
