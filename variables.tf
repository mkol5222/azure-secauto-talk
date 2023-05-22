
// CP management
variable "cp_admin_password" {
  description = "Password for the Check Point admin user"
  type        = string
}

// Smart-1 Cloud
variable "cp_server" {

}

variable "cp_api_key" {

}

variable "cp_cloud_mgmt_id" {

}


//********************** Azure SP Credentials **************************//
variable "tenant_id" {
  description = "Tenant ID"
  type        = string
}

variable "subscription_id" {
  description = "Subscription ID"
  type        = string
}

variable "client_id" {
  description = "Application ID(Client ID)"
  type        = string
}

variable "client_secret" {
  description = "A secret string that the application uses to prove its identity when requesting a token. Also can be referred to as application password."
  type        = string
}

// Azure DC reader SP
variable "az-reader-appid" {
  description = "Azure Application ID"
}
variable "az-reader-secret" {
  description = "Azure Application ID Secret"
}
variable "az-reader-tenantid" {
  description = "Azure Tenant ID"
}
