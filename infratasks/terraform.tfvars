# -------------------------------
# terraform.tfvars
# -------------------------------

resource_group_name = "rg-linux-prod-01"
location            = "west europe"

vnet_name           = "swazlinvm011"
vnet_address_space  = "10.0.0.0/16"

subnet_name         = "subnet-linux"
subnet_address_prefix = "10.0.1.0/24"

nsg_name            = "swazlinux-nsg"

nic_name            = "swazlinuxvm-nic"

vm_name             = "swazlinuxvm01"
vm_size             = "Standard_d2s_v5"

admin_username      = "azureadmin"

os_disk_name        = "linuxvm-osdisk"

storage_account_name = "linuxdiagstore01"

image_publisher     = "Canonical"
image_offer         = "0001-com-ubuntu-server-jammy"
image_sku           = "22_04-lts"
image_version       = "latest"

environment         = "Production"
owner               = "CloudTeam"
project             = "LinuxVM"