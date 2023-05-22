resource "checkpoint_management_host" "example" {
  name = "Some Host 1"
  ipv4_address = "192.0.89.1"
  color = "orange"
}

resource "checkpoint_management_host" "example2" {
  name = "Some Host 2"
  ipv4_address = "192.0.89.2"
  color = "green"
}