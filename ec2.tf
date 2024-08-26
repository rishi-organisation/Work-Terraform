resource "aws_instance" "rishi" {
  ami                     = "ami-06d64e8645ed82fd0"
  instance_type           = "m5.large"
  subnet_id               = aws_subnet.main.id

}
