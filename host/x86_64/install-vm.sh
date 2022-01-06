#!/bin/bash

qemu-system-x86_64 \
  -machine type=q35,accel=hvf \
  -m 8G \
  -smp 4 \
  -cpu host \
  -hda EndeavourOS_Atlantis_neo-21_5.qcow2 \
  -vga virtio \
  -usb \
  -device usb-tablet \
  -display default,show-cursor=on \
  -net user,hostfwd=tcp::10022-:22 \
  -net nic \
  -full-screen #-cdrom ./EndeavourOS_Atlantis_neo-21_5.iso