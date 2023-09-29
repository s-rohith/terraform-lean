# Terraform Associate Certification: HashiCorp Certified

**Course**: _Terraform Associate Certification: HashiCorp Certified_. Link, https://kodekloud.com 

__HCL - Hashicorp Declarative Language__

Resources created during the course,

## References:
Providers are a logical abstraction of an upstream API. They are responsible for understanding API interactions and exposing resources. 

There are two main reasons to use the `providers` argument: [(*reference*)](https://developer.hashicorp.com/terraform/language/meta-arguments/module-providers#when-to-specify-providers)
* Using different default provider configurations for a child module.
* Configuring a module that requires multiple configurations of the same provider.

*Available providers*
- [Official](https://registry.terraform.io/browse/providers?tier=official)
- [Partner](https://registry.terraform.io/browse/providers?tier=partner) 
- [Community](https://registry.terraform.io/browse/providers?tier=community)

*Providers used in this course,*
1. [local](https://registry.terraform.io/providers/hashicorp/local/latest/docs)
1. [random](https://registry.terraform.io/providers/hashicorp/random/latest/docs) # To test multiple providers

*Resources used in this course,*
1. [local_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file)
1. [local_sensitive_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file)
1. [random_pet](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet)
1. [random_string](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)

Reference docs;
1. [Version Constraint Syntax](https://developer.hashicorp.com/terraform/language/expressions/version-constraints#version-constraint-syntax)


*Commands used in this course,*
```sh
# Initialize and apply
 terraform init
 terraform plan
 terraform apply -auto-approve
 
 terraform show
 terraform state list
 terraform state show local_file.pet

# To update 
 terraform plan

 # To format
 terraform fmt

 # To destroy
 terraform destroy

 # After adding multiple providers
 terraform init -upgrade
 terraform plan
 terraform apply -auto-approve
 terraform providers
 terraform version

```
