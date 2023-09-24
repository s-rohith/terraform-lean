# Terraform Hands-on learning

Commands used during this course, https://www.udemy.com/course/hands-on-terraform/

AWS Region "us-east-1" was used to create resources during the course

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

  # Generate key-pair
  ssh-keygen -t ed25519
  ## Enter file in which to save the key (/home/rohith/.ssh/id_ed25519): /home/rohith/.ssh/mtckey

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
1. [Security Group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)
1. [AMI Datasource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami)
1. [Key Pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair)
1. [EC2 Instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)



VScode Extension used,
1. [AWS Toolkit](https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-toolkit-vscode)
1. [Terraform](https://marketplace.visualstudio.com/items?itemName=4ops.terraform)

