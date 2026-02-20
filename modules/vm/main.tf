resource "azurerm_linux_virtual_machine" "vm" {

  name                = var.vm_name
  resource_group_name = var.resource_group
  location            = var.location
  size                = var.vm_size

  admin_username = "azureuser"

  network_interface_ids = [
    var.nic_id
  ]

  admin_password = "Password@1234"

  disable_password_authentication = false
}
