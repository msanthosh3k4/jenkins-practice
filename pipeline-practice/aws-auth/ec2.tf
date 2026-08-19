resource "aws_instance" "kubernetes" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  user_data = file("kube-setup.sh")

  vpc_security_group_ids = [
    aws_security_group.allow_tls.id
  ]

  tags = {
    Name = "Workstation"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "eks-management-sg"
  description = "Management EC2 Security Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your IP for better security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "eks-management-sg"
  }
}