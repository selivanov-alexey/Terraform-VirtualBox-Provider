resource "virtualbox_vm" "node" {
  count     = 2
  name      = format("vm-%02d", count.index + 1)
  image     = "/home/user/Dowloads/bionic-server-cloudimg-amd64-vagrant.box"
  cpus      = 1
  memory    = "512 mib"

  network_adapter {
    type           = "bridged"
    host_interface = "wlp2s0"
  }
}
