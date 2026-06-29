# -------------------------------
# variables.tf
# -------------------------------

variable "resource_group_name" {}
variable "location" {}

variable "vnet_name" {}
variable "vnet_address_space" {}

variable "subnet_name" {}
variable "subnet_address_prefix" {}

variable "nsg_name" {}

variable "nic_name" {}

variable "vm_name" {}
variable "vm_size" {}

variable "admin_username" {}

variable "os_disk_name" {}

variable "storage_account_name" {}

variable "image_publisher" {}
variable "image_offer" {}
variable "image_sku" {}
variable "image_version" {}

variable "environment" {}
variable "owner" {}
variable "project" {}