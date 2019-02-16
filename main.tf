
resource "azurerm_virtual_network" "test" {
  name                = "${var.mod_vnet_name}"
  location            = "${var.mod_location}"
  resource_group_name = "${var.mod_rg_name}"
  address_space       = "${var.mod_vnet_cidr}"
  
  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  tags {
    environment = "Production"
  }
}