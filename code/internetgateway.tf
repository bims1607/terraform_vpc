
#Creating internet gateway
resource "aws_internet_gateway" "internet_G" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "internet_G"
  }
}
