data "aws_ami" "server_ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}



# Reference
# Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
# AMI ID          : ami-053b0d53c279acc90
# Owner account ID: 099720109477
# AMI name        : ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230516
# https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Images:visibility=public-images;search=:ami-053b0d53c279acc90;v=3;$case=tags:false%5C,client:false;$regex=tags:false%5C,client:false
