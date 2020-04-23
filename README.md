# YAML vars parser

This module can parse YAML file with vars

## Example of usage

For example: you have YAML file with global vars and component specific vars. Files and folders should have this structure:
```bash
.
├── component
│   ├── vars
│   │   ├── default.yaml
│   │   ├── dev.yaml
│   │   └── prod.yaml
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
└── vars.yaml
```

Your module call will look like this:
```hcl-terraform
module "yaml_vars_parser" {
  source = "yurymkomarov/terraform-local-yaml-vars-parser"

  custom_vars = file("${path.root}/../vars.yaml")
}
```

After this you can have access to all variables from YAML files as `module.yaml_vars_parser.results["${var_name}"]`
