provider "azurerm" {
  features {}
}

module "vm" {

  source = "../../../../modules/vm"

  vm_name        = var.vm_name
  location       = var.location
  resource_group = var.resource_group
  vm_size        = var.vm_size
  nic_id         = var.nic_id
}

