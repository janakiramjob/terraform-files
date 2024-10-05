resource "aws_vpc" "main" {
    cidr_block  = var.cidr_block
}

resource "aws_subnet" "private_subnet" {
    count = length(var.private_subnet_cidrs)
    vpc_id = aws_vpc.main.vpc_id
    cidr_block = var.private_subnet_cidrs
}

resource "aws_subnet" "public_subnet" {
    count = length(var.private_subnet_cidrs)
    vpc_id = aws_vpc.main.vpc_id
    cidr_block = var.public_subnet_cidrs
}