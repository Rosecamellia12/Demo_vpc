resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL7hpjWg3O/9DKb2ilevwb/3uz0rS5whBzs2AcRJjRlk piyach60@gmail.com"
  # public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHFX8c1QL9PZTcDv0bP9q3Oer/Ui2X5wEBkbPNspr36K gaura@DESKTOP-69MDMK7"
}



# instance_ip = {
#   "private_ip" = "10.0.11.111"
#   "public_ip" = "56.228.2.61"
# }