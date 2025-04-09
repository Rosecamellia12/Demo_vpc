resource "aws_security_group" "my_sg_public" {
  vpc_id = aws_vpc.my_vpc.id
  name = "project_ec2"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // https port from anywhere
  }
	ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // http from anywhere
    }
	ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # cidr_blocks = ["103.31.142.93/32"]   // ssh from your ip only
	cidr_blocks = ["0.0.0.0/0"]
	}

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
}
resource "aws_security_group" "my_sg_private" {
    vpc_id = aws_vpc.my_vpc.id
    name= "project_ec2_private"

    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # cidr_blocks = ["10.0.1.0/24"] // allow traffic from public tier only
    cidr_blocks = [aws_subnet.my_subnet.cidr_block]
	
	}

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}