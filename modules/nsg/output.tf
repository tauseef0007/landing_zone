output "nsg_id" {
  value = values(azurerm_network_security_group.example)[0].id
}