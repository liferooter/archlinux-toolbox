# Arch Linux Toolbox Image

This is Arch Linux image for [Toolbox](https://github.com/containers/toolbox).

# Usage

```bash
git clone https://github.com/liferooter/archlinux-toolbox
cd archlinux-toolbox
podman build -t archlinux-toolbox .
toolbox create -c archlinux -i archlinux-toolbox
```
