# resource "azurerm_bastion_host" "imdbastion" {
#   for_each = var.bastion
#   name= each.value.name
#   location = each.value.location
#   resource_group_name = each.value.resource_group_name

# }