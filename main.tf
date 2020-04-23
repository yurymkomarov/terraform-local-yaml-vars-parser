locals {
  default_vars   = try(yamldecode(file("${path.root}/vars/default.yaml")), {})
  workspace_vars = try(yamldecode(file("${path.root}/vars/${terraform.workspace}.yaml")), {})
  custom_vars    = try(yamldecode(var.custom_vars), {})
}
