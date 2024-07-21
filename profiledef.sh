#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="NetCat-Rescue"
iso_label="NetCat-Rescue"
iso_publisher="Samuel Vergara Martín"
iso_application="NetCat-Rescue"
iso_version="0.0.1"
install_dir="NetCat-Builder"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/passwd"]="0:0:400"
  ["/etc/group"]="0:0:400"
)
