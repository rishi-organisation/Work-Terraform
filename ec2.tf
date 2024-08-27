resource "aws_instance" "rishi" {
  ami                     = "ami-06d64e8645ed82fd0"
  instance_type           = "m5.large"
  subnet_id               = aws_subnet.main.id
  count                   = var.create_instance ? 1 : 0
  tags = {
      Name = local.Instance_Name,
      username = var.Name1,
      Location = local.Instance_location
    }
}
