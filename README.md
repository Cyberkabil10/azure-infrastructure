terraform init
terraform plan --var-file="terraform.tvars"  -out=tfplan
terraform apply --var-file="terraform.tvars"
 Let us verify if Terraform can read and write the remote state file
terraform init --backend-config="terraform.cfg"
terraform apply --var-file="terraform.tvars"
cd ../deploy/
terraform init --backend-config="terraform.cfg"
terraform apply --var-file="terraform.tvars"


# Terraform Commands


`terraform init --backend-config="terraform.cfg"`

`terraform plan --var-file="terraform.tvars"`

`terraform apply --var-file="terraform.tvars"`


`terraform destroy --var-file="terraform.tvars"`

`az storage blob upload --container-name $container_name --file $file_to_upload --name $blob_name`# azure-infrastructure
# azure-infrastructure
