terraform init -backend-config=env-${env}/state.tfvars
terraform plan -var-file=env-${env}/main.tfvars -var vault_token=${vault_token} 
terraform ${action} -auto-approve -var-file=env-${env}/main.tfvars -var vault_token=${vault_token} 