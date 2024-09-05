provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "web" {
  ami                    = "ami-008d41dbe16db6778"      
  instance_type          = "t2.micro"
  key_name               = "shrikey"   
  tags = {
    Name = "old_inst"
  }
}

resource "aws_security_group" "devops-sg" {
  name        = "devops-project-veera"
  description = "Allow TLS inbound traffic"

  ingress = [
    for port in [22, 80, 443, 8080, 9000, 3000, 8082, 8081] : {
      description      = "inbound rules"
      from_port        = port
      to_port          = port
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "devops-sg"
  }
}
