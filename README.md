# Secureblue Workstation Spin for Alexis 

[![build-ublue](https://github.com/alexispurslane/secureblue-alexis/actions/workflows/build.yml/badge.svg)](https://github.com/alexispurslane/secureblue-alexis/actions/workflows/build.yml)

## Features
- Add system76 firmware manager and activate its daemon
- Add stow for configuration file management
- Add fish for completions/backup shell (it's what I'm familiar with) and
  nushell (my aspirational shell)
- Add Flatpaks for all my applications including Gradience for my custom lightweight theme (with the system management-critical ones being system flatpaks)
- Provide the distrobox assemble spec for my development container as part of
  the system, so I can use `ujust` to build it
- Add a ujust script for downloading and un-`stow`ing my dotfiles.
- Add my custom background
- Add my personal GNOME Extensions that I bring with me everywhere:
  - Logo Menu (to make the corner menu actually, uh, useful)
  - Containers (conveniently manage containers with a small GUI that's always handy without having to launch an application!)
  - Battery Time (instead of percent in quick settings)
  - Privacy Quick Settings
  - Vitals (system usage stats in top bar)
  - Search Light (convert the activities view menu into a spotlight style
    search bar)
  - V-Shell (vertical workspaces!)
  - Forge (automatic tiling window manager for GNOME)
  - Misc others
- Add my gsettings:
  - Proper keybindings for navigating vertical workspaces
  - Keybindings for launching the file manager, host terminal, and dev
    container terminal
  - All my extension settings.

## Installation

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase
  ostree-unverified-registry:ghcr.io/alexispurslane/secureblue-alexis:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/alexispurslane/secureblue-alexis:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/alexispurslane/secureblue-alexis
```
