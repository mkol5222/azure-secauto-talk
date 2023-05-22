module "cp-policy" {
  source        = "./cp-policy"
  
  cp_server        = var.cp_server
  cp_api_key       = var.cp_api_key
  cp_cloud_mgmt_id = var.cp_cloud_mgmt_id

  az-reader-appid  = var.az-reader-appid
  az-reader-secret = var.az-reader-secret
  az-reader-tenantid = var.az-reader-tenantid
  
}