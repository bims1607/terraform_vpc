#creating EC2
data "aws_am i" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "jenkins" {
    depends_on = [
    aws_security_group.jenkins_security_grp
    ]
    ami           = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"
    key_name = "bimal_ssh_key"
    vpc_security_group_ids = [ aws_security_group.jenkins_security_grp.id]
    subnet_id = aws_subnet.public_subnet_1.id

  tags = {
    Name = "HelloWorld"
  }
}
