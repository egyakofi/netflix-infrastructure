####### ec2
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  associate_public_ip_address = true
  #vpc_security_group_ids = [aws_security_group.allow_tls.id]
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "module-ec2"
  }
}
