variable "az-reader-appid" {
  description = "Azure Application ID"
}
variable "az-reader-secret" {
  description = "Azure Application ID Secret"
}
variable "az-reader-tenantid" {
  description = "Azure Tenant ID"
}


resource "checkpoint_management_azure_data_center_server" "testAzure" {
  name                  = "myAzure"
  authentication_method = "service-principal-authentication"
  directory_id          = var.az-reader-tenantid
  application_id        = var.az-reader-appid
  application_key       = var.az-reader-secret

  ignore_warnings = true
}

resource "checkpoint_management_data_center_query" "example" {

  name         = "VMs in Azure"
  data_centers = ["All"]
  query_rules {
    key_type = "predefined"
    key      = "type-in-data-center"
    values   = ["Virtual Machine"]
  }
}

resource "checkpoint_management_data_center_query" "servers" {

  name         = "Server VMs in Azure"
  data_centers = ["All"]
  query_rules {
    key_type = "predefined"
    key      = "type-in-data-center"
    values   = ["Virtual Machine"]
  }
  query_rules {
    key_type = "tag"
    key      = "x-cp-type"
    values   = ["server"]
  }
}