#Create main vpc
resource "aws_vpc" "main" {
  cidr_block       = "100.20.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}






