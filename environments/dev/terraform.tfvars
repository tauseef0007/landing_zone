rgs = {
  rg1 = {
    name        = "rg1"
    location    = "East US"
    environment = "dev"
  }
}

vnet_name = {
  vnet1 = {
    name                = "vnet1"
    location            = "East US"
    resource_group_name = "rg1"
    address_space       = ["10.0.0.0/16"]
  }
  # vnet2 = {
  #   name = "vnet2"
  #   location = "West US"
  #   resource_group_name = "rg2"
  #   address_space = "10.1.0.0/16"
  # }
}

subnet = {
  subnet1 = {
    name                 = "subnet1"
    location             = "East US"
    address_prefixes     = ["10.0.1.0/24"]
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
  }

  subnet2 = {
    name                 = "subnet2"
    location             = "East US"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
nsg = {
  "nsg1" = {
    name                = "nsg1"
    location            = "East US"
    resource_group_name = "rg1"
    security_rules      = []
  }
}