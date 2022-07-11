variable "proxmox_api_url" {
  default = "https://<INSERT IP ADDRESS PROXMOX SERVER>:8006/api2/json"
}

variable "proxmox_api_token_id" {
  default = "<INSERT API ID PROXMOX SERVER>"
}

variable "proxmox_api_token_secret" {
  default = "<INSERT API TOKEN PROXMOX SERVER>"
}

variable "ssh_key" {
  default = "<INSERT SSH KEY FOR VMS>"
}

variable "virtual_machines" {
  default = {
    "tf-test-01" = {
      hostname    = "tf-test-01",
      ip_address  = "192.168.10.2/24",
      gateway     = "192.168.10.1",
      target_node = "<INSERT YOUR PROXMOX NODE NAME>",
      cpu_cores   = 2,
      cpu_sockets = 1,
      memory      = "1024",
      hdd_size    = "5G",
      vm_template = "<INSERT YOUR VM TEMPLATE NAME>",
      ciuser      = "<INSERT USERNAME FOR VMS>",
      cipassword  = "<INSERT PASSWORD FOR VMS>",
    },
    "tf-test-02" = {
      hostname    = "tf-test-02",
      ip_address  = "192.168.10.3/24",
      gateway     = "192.168.10.1",
      target_node = "<INSERT YOUR PROXMOX NODE NAME>",
      cpu_cores   = 2,
      cpu_sockets = 1,
      memory      = "1024",
      hdd_size    = "5G",
      vm_template = "<INSERT YOUR VM TEMPLATE NAME>",
      ciuser      = "<INSERT USERNAME FOR VMS>",
      cipassword  = "<INSERT PASSWORD FOR VMS>",
    },
  }
}
