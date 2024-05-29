variable "components" {
  default = ["frontend", "catalogue", "cart", "user", "shipping", "payment", "dispatch" ]
}

resource "aws_instance" "instance" {
  count                  = length(var.components)
  ami                    = "ami-0d035b0fa9820ac92"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-06b8bece9ed37b3dc"]
  tags = {
    Name = var.components[count.index]
  }
}

resource "aws_route53_record" "record" {
  count   = length(var.components)
  name    = var.components[count.index]
  type    = "A"
  zone_id = "Z02385991VFZVIKN8WPK8"
  records = [aws_instance.instance[count.index].private_ip]
  ttl     = 3
}

