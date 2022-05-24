resource "aws_instance" "terraform" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-${count.index}"
  }
}
