# Nodeup
Simple Nomad cluster creator for libvirt (Linux).
Default setup is a single master with three nodes

## Requirements

Install qemu-kvm, libvirt

### Ubuntu

```
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
```

### Fedora

```
sudo dnf -y install qemu-kvm libvirt
```


### CentOS 7

* Run the following:

```
sudo yum install epel-release
sudo yum install qemu libvirt qemu-kvm
```

# Usage

## Add your user to libvirt group
```
sudo usermod -a -G libvirt $(whoami)
```

This will allow the *up.sh* script to run without *sudo* later on.

You may also need to restart libvirtd to pick up the change.

```
sudo systemctl restart libvirtd.service
```

### nodeup script

Nodeup uses a container to run `vagrant` and `vagrant-libvirt`. For convenience
a script called `nodeup` has been provided.

Use this script to prefix all your vagrant commands. For example:

```
$ ./nodeup vagrant ssh lpabon-k8s-1-node0
```

# Exporting
1. Use socat to forward a port from the host to the VM:

```
socat TCP-LISTEN:4646,fork,reuseaddr TCP:<IP of master>:4646
```

