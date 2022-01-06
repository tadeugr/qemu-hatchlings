# qemu-hatchlings

Set of scripts and documentation to quickly create Qemu virtual machines

# Create a Virtual Machine

## Requirements

You must have [Qemu](https://www.qemu.org/) installed.

## Clone this repo

```
git clone https://github.com/tadeugr/qemu-hatchlings ./my-vm && cd ./my-vm
```

## Create a disk image

```
./host/common/create-img.sh
```

## Download a Linux distro ISO

Download any `x86_64` Linux distro ISO file and save it in the root folder as `boot.iso`.

## Install the VM

```
./host/x86_64/install-vm.sh
```

## Start the VM

```
./host/x86_64/start-vm.sh
```

> Hint: now you SSH to the VM from your host: `ssh <vmuser>@localhost -p10022`
