data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"
  key_name = "officeAmazonLinuxKey01"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}
