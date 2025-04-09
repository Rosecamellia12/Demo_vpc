resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"   // anywhere accessible
    gateway_id = aws_internet_gateway.gw.id
  }


  
}

resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"   // anywhere accessible
    nat_gateway_id = aws_nat_gateway.aws_private_nat.id
  }


}


