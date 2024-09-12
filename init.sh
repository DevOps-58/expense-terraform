terraform init -backend-config=env-${env}/state.tfvars
terraform plan -var-file=env-${env}/main.tfvars  -var pwd=${var.pwd}
terraform ${action} -auto-approve -var-file=env-${env}/main.tfvars -var pwd=${var.pwd}