provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "vm" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//vm?ref=main"

  create_resource_group = false

  resource_group_name = var.resource_group_name
  location            = var.location

  vm_name        = var.vm_name
  vm_size        = var.vm_size
  zone           = var.zone
  admin_username = var.admin_username
  ssh_public_key = var.ssh_public_key

  subnet_id = var.subnet_id

  network_security_group_id = var.network_security_group_id

  private_ip_address_allocation = var.private_ip_address_allocation
  private_ip_address            = var.private_ip_address

  accelerated_networking_enabled = var.accelerated_networking_enabled

  identity_type = var.identity_type
  identity_ids  = var.identity_ids

  source_image = var.source_image

  os_disk_type    = var.os_disk_type
  os_disk_size_gb = var.os_disk_size_gb
  os_disk_caching = var.os_disk_caching

  data_disks = var.data_disks

  tags = var.tags
}
