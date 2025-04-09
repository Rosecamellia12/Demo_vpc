resource "aws_subnet" "my_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
#   availability_zone       = "eu-north-1a"
availability_zone = var.availability_zone


  tags = {
    Name = "MySubnet"
  }
}

resource "aws_subnet" "my_subnet_private" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.11.0/24"
#  map_private_ip_on_launch = true
#   availability_zone       = "eu-north-1a"
  availability_zone = var.availability_zone


  tags = {
    Name = "MySubnet"
  }
}