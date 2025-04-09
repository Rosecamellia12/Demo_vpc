resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "main"
  }
}

resource "aws_nat_gateway" "aws_private_nat" {
#  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.my_subnet.id  // used public subnet id for private nat gateway
connectivity_type = "private"
depends_on = [ aws_internet_gateway.gw ]
  tags = {
    Name = "gw NAT"
  }
  }