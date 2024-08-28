#Create Vpc
resource "aws_vpc" "name" {
  cidr_block = var.cidr_block-vpc

  tags = {
    Name = var.vpc_tags
  }
}


#Create internet gateway
resource "aws_internet_gateway" "name" {
  vpc_id = aws_vpc.name.id

  tags = {
    Name = var.IG_Tags
  }
}


#Create Subnet
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.name.id
  cidr_block = var.cidr_block-pub
  availability_zone = var.subnet-public

  tags = {
    Name = "Pub_sub"
  }

}

#create private subnet
resource "aws_subnet" "public-2" {
  vpc_id = aws_vpc.name.id
  cidr_block = var.cidr_block-pri
  availability_zone = var.subnet-public-2

  tags = {
    Name = "pub-2"
  }
}


#Create Route Table and attach vpc
resource "aws_route_table" "name" {
    vpc_id = aws_vpc.name.id

    tags = {
      Name = "RT"
    }

    #Create Edit Route
    route  {
        gateway_id = aws_internet_gateway.name.id
        cidr_block = var.IG_cidr_block
    }
  
}

#Create Subnet Association
resource "aws_route_table_association" "name" {
  route_table_id = aws_route_table.name.id
  subnet_id = aws_subnet.public.id

}

#Create Security Group

resource "aws_security_group" "name" {
  name = var.SG_Name
  vpc_id = aws_vpc.name.id
  tags = {
    Name = "dev_sg"
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = var.TCP_ingress
    cidr_blocks      = [var.cidr_Ingress]
    
  }
ingress {
    from_port        = 22
    to_port          = 22
    protocol         = var.TCP_ingress
    cidr_blocks      = [var.cidr_Ingress]
    
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = var.protocol_egress
    cidr_blocks      = [var.cidr_Ingress]
    
  }

}

