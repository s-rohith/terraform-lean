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

  # Generate key-pair and ssh into ec2 instance
  ssh-keygen -t ed25519
  #// Enter file in which to save the key (/home/rohith/.ssh/id_ed25519): /home/rohith/.ssh/mtckey
  terraform state list
  terraform state show aws_instance.dev_node # Copy the Public IP address
  ssh -i ~/.ssh/mtckey ubuntu@18.209.108.213
    # Check docker version within the EC2 instance
    ubuntu@ip-10-123-1-185:~$ docker --version
    Docker version 24.0.6, build ed223bc

  # Trigger provisioner since 'terraform plan' wont do. 
  # This is used to add a config in local machine and can directly ssh into the ec2 instance without providing key 
  terraform state list
  terraform apply -replace aws_instance.dev_node
  cat  ~/.ssh/config # to verify whether the config is created/updated

  # Working with vars, use console to test the vars
  $ terraform console
  > var.host_os
  (known after apply)

  $ terraform console # after adding <default = "linux"> in variables.tf
  > var.host_os
  "linux"

  terraform console -var="host_os=unix"
  terraform console -var-file="dev.tfvars"

  # Test the condition and if windows, insert ["Powershell", "-Command"]
  $ terraform console -var="host_os=linux"
  > var.host_os == "windows" ? ["Powershell", "-Command"] : ["bash", "-c"]
  [
    "bash",
    "-c",
  ]

```

## References:

### [AWS Providers Reference](ttps://registry.terraform.io/providers/hashicorp/aws/latest/docs)

*Resources used in this course,*
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


*Provisioners used,*
1. [local-exec Provisioner](https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec) - provisioner "local-exec"
1. [How to use Provisioners](https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax#how-to-use-provisioners)
1. [templatefile Function](https://developer.hashicorp.com/terraform/language/functions/templatefile) (used within provisioner "local-exec" to utilize ssh script tpl)


*VScode Extension used,*
1. [AWS Toolkit](https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-toolkit-vscode)
1. [Terraform](https://marketplace.visualstudio.com/items?itemName=4ops.terraform)
1. [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)


*Docs:*
1. [Terraform Language Documentation](https://developer.hashicorp.com/terraform/language)
1. [Declaring an Input Variable](https://developer.hashicorp.com/terraform/language/values/variables)
1. [Conditional Expressions](https://developer.hashicorp.com/terraform/language/expressions/conditionals)


