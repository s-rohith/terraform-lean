resource "aws_vpc" "mtc_vpc" {
    cidr_block       = "10.123.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    instance_tenancy = "default"

    tags = {
        Name = "dev"
    }
}

resource "aws_subnet" "mtc_public_subnet" {
    vpc_id     = aws_vpc.mtc_vpc.id
    cidr_block = "10.123.1.0/24"
    map_public_ip_on_launch = false
    availability_zone = "us-east-1a"

    tags = {
        Name = "dev-public"
    }
}