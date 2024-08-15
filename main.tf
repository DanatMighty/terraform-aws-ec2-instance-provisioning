data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-*-amd64-server-*"]
  }
}
# ami-0c5b9ab59f97ceca7 

resource "aws_instance" "devops_RandD" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_types["micro"]
  tags = {
    Name = var.instance_name
  }

  key_name = var.private_keyname
}

resource "aws_eip" "devops_eip" {}

resource "aws_eip_association" "devops_eip_assoc" {
  instance_id   = aws_instance.devops_RandD.id
  allocation_id = aws_eip.devops_eip.id
}
