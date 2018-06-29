resource "azurerm_resource_group" "development" {
  name = "development"
  location = "East US"
}

resource "azurerm_virtual_network" "network" {
  name
  address_space
  location =  "East US"
  resouce_group_name = "${azurerm_resource_group.development.name}"
  
  subnet {
    name = "public"
    address_prefix = "10.51.1.0/24"
 }
  
  subnet {
    name = "private"
    address_prefix = "10.51.2.0/24"
 }
  
  subnet {
    name  = "public2"
    address_prefix  = "10.51.3.0/24"
  }
}
