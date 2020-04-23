terraform {
  experiments = [variable_validation]
}

variable "custom_vars" {
  type    = string
  default = ""

  description = "Path to yaml file with custom vars"

  validation {
    condition     = var.custom_vars != "" ? can(yamldecode(var.custom_vars)) : true
    error_message = "YAML parsing failed!"
  }
}
