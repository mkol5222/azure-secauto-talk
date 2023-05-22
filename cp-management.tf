

module "cp-management" {
  source          = "./management-existing-vnet"
  client_secret   = var.client_secret
  client_id       = var.client_id
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

  
  resource_group_name           = "cptalk-mgmt-rg"
  mgmt_name                     = "cptalk-mgmt"
  location                      = "West Europe"
  vnet_name                     = "checkpoint-mgmt-vnet"
  address_space                 = "10.41.0.0/16"
  subnet_prefix                 = "10.41.99.0/24"
  management_GUI_client_network = "0.0.0.0/0"
  mgmt_enable_api               = "all"
  admin_password                = var.cp_admin_password
  vm_size                       = "Standard_D3_v2"
  disk_size                     = "110"
  vm_os_sku                     = "mgmt-byol"
  vm_os_offer                   = "check-point-cg-r8110"
  os_version                    = "R81.10"
  bootstrap_script              = "touch /home/admin/bootstrap.txt; echo 'hello_world' > /home/admin/bootstrap.txt"
  allow_upload_download         = true
  authentication_type           = "Password"
  admin_shell                   = "/bin/bash"
  source_image_vhd_uri          = "noCustomUri"
}