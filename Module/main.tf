module "azurerm_resource_group" {
  source = "../Code/azure_resource_group"
  resource_group = var.resource_group
}

module "azurerm_virtual_network" {
  source = "../Code/virtual_network"
  Vnet = var.Vnet
  depends_on = [ module.azurerm_resource_group ]
}

module "azurerm_linux_virtual_machine" {
  source = "../Code/azure_virtual_machine"
  vms = var.vms
  depends_on = [ module.azurerm_virtual_network ]
}

module "azurerm_public_ip" {
  source = "../Code/Public_ip"
  publicIp = var.publicIp
  depends_on = [ module.azurerm_resource_group ]
}
# module "azurerm_bastion_host" {
#   source = "../Code/azure_bastion_host"
#   bastion = var.bastion
#   depends_on = [ module.azurerm_resource_group ]
# }