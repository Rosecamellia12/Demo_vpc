resource "aws_instance" "my_instance_public" {
#   ami             = "ami-0c1ac8a41498c1a9c"  # Change to the latest Amazon Linux AMI
  ami = var.ami
  instance_type   = "t3.micro"
  subnet_id       = aws_subnet.my_subnet.id   // publiuc subnet
  security_groups = [aws_security_group.my_sg_public.id]  // public security group
  key_name        = aws_key_pair.deployer.key_name  # Replace with your key pair name
   user_data = file("./userdata") 

 
}


resource "aws_instance" "my_instance_private" {
#   ami             = "ami-0c1ac8a41498c1a9c"  # Change to the latest Amazon Linux AMI
  ami = var.ami
  instance_type   = "t3.micro"
  subnet_id       = aws_subnet.my_subnet_private.id  
  security_groups = [aws_security_group.my_sg_private.id]  
  key_name        = aws_key_pair.deployer.key_name  # Replace with your key pair name
  
  }
