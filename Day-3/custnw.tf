# ------------------------------------ CUSTOM NETWORK CREATION --------------------------------------------------------
# Create VPC
resource "aws_vpc" "cust_vpc" {
  cidr_block = var.cidr-range-vpc
  tags = {
    Name = "Cust_VPC"
  }
}

# Create Subnets
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.cust_vpc.id
  cidr_block = var.cidr-range-sn-pub
  availability_zone = var.az-pub-sn
  tags = {
    Name = "public_Subnet"
  }
}
resource "aws_subnet" "private" {
  vpc_id = aws_vpc.cust_vpc.id
  cidr_block = var.cidr-range-sn-pvt
  availability_zone = var.az-pvt-sn
  tags = {
    Name = "private_Subnet"
  }
}

# create Internet Gateway
resource "aws_internet_gateway" "cust_ig" {
  vpc_id = aws_vpc.cust_vpc.id
  tags = {
    Name="cust_IG"
  }
}

# create Route Table and attach to IG
resource "aws_route_table" "cust_rt" {
  vpc_id = aws_vpc.cust_vpc.id

route {
    gateway_id = aws_internet_gateway.cust_ig.id
    cidr_block = var.cidr-range-edit-rt
}
}

# Create subnet Association and add subnets in RT
resource "aws_route_table_association" "cust_rt_ass" {
  route_table_id = aws_route_table.cust_rt.id
  subnet_id = aws_subnet.public.id
}

# Create Security Groups
resource "aws_security_group" "cust_sg" {
  vpc_id = aws_vpc.cust_vpc.id
  tags = {
    Name="cust_sg"
  }

ingress {
    from_port = var.ingress-port-ssh
    to_port = var.ingress-port-ssh
    protocol = var.ingress-protocol
    cidr_blocks = [var.cidr-range-sg]
}
ingress {
    from_port = var.ingress-port-http
    to_port = var.ingress-port-http
    protocol = var.ingress-protocol
    cidr_blocks = [ var.cidr-range-sg ]
}
egress{
    from_port = var.egress-port
    to_port = var.egress-port
    protocol = var.egress-protocol
    cidr_blocks = [ var.cidr-range-sg ]
}
}