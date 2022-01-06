# Install arch packages

# Before you begin

```
sudo pacman -Sy
sudo pacman -S --needed base-devel git
```

# Yay

If yay is not installed already, run:

```
git clone https://aur.archlinux.org/yay-git.git /tmp/yay
cd /tmp/yay
makepkg --noconfirm -si
```

# SSH server

```
sudo pacman -S openssh
sudo systemctl start sshd
sudo systemctl enable sshd
```

# Geany

```
sudo pacman -S geany
```

# Chrome

```
sudo yay -S google-chrome
```

# google-cloud-sdk (gcloud)

```
yay -S google-cloud-sdk
```
# Docker

```
sudo pacman -Syu docker docker-compose

sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -a -G docker $(whoami)
```

# postgresql-libs

```
sudo pacman -S postgresql-libs
```
