
resource "aws_lb" "LB" {
  name = "LB"
  internal = false
  load_balancer_type = "application"
  security_groups =[ aws_security_group.name.id ]
  subnets = [aws_subnet.public.id,aws_subnet.public-2.id]

  tags = {
    Name = "Load_Balancer"
  }
}
