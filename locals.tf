locals {
  #Tags
  tags = merge({
      creation_mode = "tf",
      module_easy-alerting-datafactory = "true"
      creation_timestamp = timestamp(),
      update_timestamp = timestamp(),
      }, var.Tags)
}