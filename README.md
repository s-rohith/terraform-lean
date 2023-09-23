# Terraform Hands-on learning

Commands used during this course, https://www.udemy.com/course/hands-on-terraform/
```sh 
  terraform init
  terraform plan
  terraform apply

  terraform state list
  terraform state show aws_vpc.mtc_vpc
  terraform show

  terraform destroy -auto-approve
  terraform show
  terraform apply -auto-approve

  terraform plan
  terraform apply -auto-approve

  terraform fmt # To format all the .tf file
```

## References:

### [AWS Providers Reference](ttps://registry.terraform.io/providers/hashicorp/aws/latest/docs)

Resources used in this course,
1. [VPC](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
1. [Subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)
1. [Internet Gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)
1. [Route Table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)
1. [Route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route)
