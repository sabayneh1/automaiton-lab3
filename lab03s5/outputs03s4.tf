output "Linux_hostname" {
  value = azurerm_linux_virtual_machine.vmlinux.name

}

output "Linux_private_ip_addresses" {
  value = azurerm_linux_virtual_machine.vmlinux.private_ip_address

}

output "Linux_public_ip_addresses" {
  value = azurerm_linux_virtual_machine.vmlinux.public_ip_addresses

}

output "Virtual_network_name" {
  value = azurerm_virtual_network.vnet.name

}

output "address_space" {
  value = azurerm_virtual_network.vnet.address_space

}
output "Subnet_name1" {
  value = azurerm_subnet.subnet.name

}

output "Subnet_name2" {
  value = azurerm_subnet.subnet2.name

}

output "Subnet_address1" {
  value = azurerm_subnet.subnet.address_prefixes

}

output "Subnet_address2" {
  value = azurerm_subnet.subnet2.address_prefixes

}



