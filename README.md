# Terraform Hands-on learning

Commands used during this course, https://www.udemy.com/course/hands-on-terraform/
```sh 
  terraform init
  terraform plan
  terraform apply

  # To view the list of resources which already exists
  terraform state list
  terraform state show aws_vpc.mtc_vpc # mtc_vpc is the vpc name
  terraform show # Displays full resources

  # Destroy and Rebuild
  terraform destroy -auto-approve 
  terraform show
  terraform apply -auto-approve # Use auto approve to avoid manually entering 'yes'

  # After adding a new resource
  terraform plan
  terraform apply -auto-approve

  # Format all the .tf file
  terraform fmt 
```

## References:

### [AWS Providers Reference](ttps://registry.terraform.io/providers/hashicorp/aws/latest/docs)

Resources used in this course,
1. [VPC](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
1. [Subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)
1. [Internet Gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)
1. [Route Table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)
1. [Route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route)
1. [Roue Table Associate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association)