module "resource-group" {
  source = "../../modules/resource-group"
  rgs    = var.rgs



}
module "vnet" {
  source     = "../../modules/vnet"
  depends_on = [module.resource-group]
  vnet_name  = var.vnet_name
}

module "subnet" {
  source     = "../../modules/subnet"
  depends_on = [module.vnet]
  subnet     = var.subnet
  nsg_id     = module.nsg.nsg_id
}

module "nsg" {
  source     = "../../modules/nsg"
  depends_on = [module.resource-group]
  nsg        = var.nsg
  nsg_id     = module.nsg.nsg_id
}