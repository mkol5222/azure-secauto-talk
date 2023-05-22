resource "checkpoint_management_publish" "changes" {

  triggers = ["${timestamp()}"]
  depends_on = [
    resource.checkpoint_management_host.example,
    resource.checkpoint_management_host.example2,
  ]
}