output "instance_ip" {
  value ={
   public_ip = aws_instance.my_instance_public.public_ip
  private_ip = aws_instance.my_instance_private.private_ip
  }
}
