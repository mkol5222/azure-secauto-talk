terraform {
  required_providers {
    checkpoint = {
      source = "CheckPointSW/checkpoint"
      version = "2.4.0"
    }
  }
}

provider "checkpoint" {
  server        = var.cp_server
  api_key       = var.cp_api_key
  cloud_mgmt_id = var.cp_cloud_mgmt_id
  context       = "web_api"
}