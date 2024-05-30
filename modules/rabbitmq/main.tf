resource "aws_security_group" "main" {
  name        = "${var.component}-${var.env}-sg"
  description = "${var.component}-${var.env}-sg"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5672
    to_port     = 5672
    protocol    = "TCP"
    cidr_blocks = var.server_app_port_sg_cidr
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = var.bastion_nodes
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.component}-${var.env}-sg"
  }
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.image_id
  subnet_id     = var.subnet_ids[0]
  instance_type = var.instance_type

  root_block_device {
    encrypted  = true
    kms_key_id = var.kms_key_id
  }

  tags = {
    Name = var.component
    env  = var.env
  }
}




