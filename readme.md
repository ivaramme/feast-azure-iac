# Azure Infrastructure to setup FEAST (no AML included)

This repo uses Terraform to deploy the infrastructure. The two main folders include `modules` with the definitions of the different Azure components needed, and the folder `feast` which stitches the modules together to put the infrastructure in place.

For now, the variables are loaded from a tfvars file inside `feast/dev`. Any new environment deployment would require a new set of variables. For the database username and password, you could:

1) Enter the values when running the Terraform command.

2) Set two variable names like these with the actual values:

```bash
export TF_VAR_offline_server_admin_user=<DB_USER>
export TF_VAR_offline_server_admin_pwd=<PASSWORD>
```

Steps:

```bash
az login # Login to Azure
cd feast
terraform init
terraform plan -var-file dev/terraform.tfvars
terraform apply -var-file dev/terraform.tfvars
```
