#Esxi

resource "esxi_guest" "simpelevm" {
  guest_name     = "simpelevm"  
  disk_store     = "Datastore1"
  ovf_source     = "https://cloud-images.ubuntu.com/releases/24.04/release/ubuntu-24.04-server-cloudimg-amd64.ova"  # Ubuntu Cloud Image

  network_interfaces {
    virtual_network = "VM Network"          
  }
}

output "vm_name" {
  value = esxi_guest.simpelevm.guest_name
}

output "vm_ip" {
  value = esxi_guest.simpelevm.network_interfaces[0].ipv4_address
}

