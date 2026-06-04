variable "rgs" {
    type = map(object({
      name = string
      location = string
      environment = string
    }))
}


variable "vnet_name" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      address_space = list(string)
    }))
}


variable "subnet"{
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      virtual_network_name = string
      address_prefixes = list(string)
      
    }))
}


variable "nsg" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      security_rules = list(object({
        name                       = string
        priority                   = number
        direction                  = string
        access                     = string
        protocol                   = string
        source_port_range          = string
        destination_port_range     = string
        source_address_prefix      = string
        destination_address_prefix = string
      }))
    }))
  
}