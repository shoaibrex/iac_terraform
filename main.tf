resource "aws_instance" "web_server" {
  ami           = data.aws_ami.health_ami.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "WebServer-${terraform.workspace}"
  }
}
