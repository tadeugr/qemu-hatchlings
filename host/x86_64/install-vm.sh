#!/bin/bash

HERE="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

qemu-system-x86_64 \
  -machine type=q35,accel=hvf \
  -m 8G \
  -smp 4 \
  -cpu host \
  -hda $HERE/../../img-001.qcow2 \
  -vga virtio \
  -usb \
  -device usb-tablet \
  -display default,show-cursor=on \
  -net user,hostfwd=tcp::10022-:22 \
  -net nic \
  -full-screen \
  -cdrom $HERE/../../boot.iso