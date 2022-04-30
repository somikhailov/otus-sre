variable "libvirt_disk_path" {
  description = "path for libvirt pool"
  default     = "/tmp/terraform-provider-libvirt-pool-ubuntu"
}

variable "ubuntu_img_url" {
  description = "ubuntu image"
  default     = "https://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img"
}

variable "vm_hostname" {
  description = "vm hostname"
  default     = "terraform-ubuntu"
}