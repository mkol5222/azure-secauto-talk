resource "azurerm_marketplace_agreement" "checkpoint" {
  count     = 1
  publisher = var.publisher   //"checkpoint"
  offer     = var.vm_os_offer //"check-point-cg-r8110" // vm_os_offer           = "check-point-cg-r8110"                 # "check-point-cg-r8040"
  plan      = var.vm_os_sku   // "mgmt-byol"             // vm_os_sku             = "mgmt-byol"                              # "mgmt-byol" or "sg-byol" 
}