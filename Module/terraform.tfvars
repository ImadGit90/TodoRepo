resource_group = {
    rg1 = {
        name = "myrgimd1"
        location = "central india"
    }
}

Vnet = {
      vnet1 = {

    name                = "Imavnet1"
    location            = "central india"
    resource_group_name = "myrgimd1"
    address_space       = ["10.0.0.0/16"]

    subnet = [{
      name             = "subnet1"
      address_prefixes = ["10.0.1.0/24"]

      }
      ,
      {
        name             = "subnet2"
        address_prefixes = ["10.0.2.0/24"]
    }]
  }

}

vms = {
  vm1 = {
    nic_name            = "Imdnic"
    resource_group_name = "myrgimd1"
    location            = "central india"
    subnet_name         = "subnet1"
    virtual_network_name = "Imavnet1"
    vm_name             = "Imdvm"
    size                = "Standard_D2s_v3"
    admin_username      = "adminuserImd"
    admin_password      = "p@sswordImd1"

  source_image_reference = {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts"
  version   = "latest"
}
  }
    vm2 = {
    nic_name            = "Imdnic2"
    resource_group_name = "myrgimd1"
    location            = "central india"
    subnet_name         = "subnet2"
    virtual_network_name = "Imavnet1"
    vm_name             = "Imdvm1"
    size                = "Standard_D2s_v3"
    admin_username      = "adminuserImd"
    admin_password      = "p@sswordImd1"

   source_image_reference = {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts"
  version   = "latest"
}
  }

}

publicIp = {
    publicIp1 = {
    name = "imdpublicip1"
    resource_group_name = "myrgimd1"
    location = "central India"
    allocation_method = "Static"
}
  publicIp2 = {
    name = "imdpublicip2"
    resource_group_name = "myrgimd1"
    location = "central India"
    allocation_method = "Static"
}
}

# bastion = {
#     bastion1 = {
#         name = "imdbastion"
#         location = "central india"
#         resource_group_name = "myrgimd1"
#     }
# }
