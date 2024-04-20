resource "aws_instance" "web-server" {
  ami           = "data.aws_ami.this.id"
  instance_type = "t2.micro"
  key_name = "sshkeyname"
  security_groups = ["allow_ssh", "allow_http", "allow_egress"]
  user_data = file("script.sh")

  tags = {
    Name = "web-server"
  }
}