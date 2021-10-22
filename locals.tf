locals {
  #Tags
  tags = merge({
      creation_mode = "tf",
      module_easy-alerting-datafactory = "true"
      update_timestamp = timestamp(),
      }, var.Tags)
}