# Se oculta, para que ansible lo cree
resource "aws_launch_configuration" "lc_def" {
  name_prefix           = "${var.env}-lc-${var.name}"
  image_id              = "${data.aws_ami.backend.id}"
  instance_type         = "${var.instance_type}"

  key_name              = "${var.key_name}"

  security_groups       = ["${var.security_group_ids}"]
  iam_instance_profile  = "${var.iam_role}"
  #user_data            = "${file("get-latest.sh")}"

  root_block_device {
    volume_size           = "${var.volume_size}"
    volume_type           = "gp2"
    delete_on_termination = "true"
  }

  lifecycle {
    create_before_destroy = true
  }
}

//resource "aws_security_group" "sg_lc" {
//  name        = "${var.env}-${var.name}-sg-lc"
//  description = "Autoscaling inbound and outbound"
//  vpc_id      = "${var.vpc_id}"
//
//  ingress {
//    from_port   = 22
//    to_port     = 22
//    protocol    = "tcp"
//    security_groups = ["${var.security_group_access}"]
//  }
//
//  ingress {
//    from_port   = 80
//    to_port     = 80
//    protocol    = "tcp"
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//
//  ingress {
//    from_port   = 9000
//    to_port     = 9000
//    protocol    = "tcp"
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//
//  egress {
//    from_port   = 0
//    to_port     = 0
//    protocol    = "-1"
//    cidr_blocks = ["0.0.0.0/0"]
//  }
//
//  tags {
//    Name        = "${var.env}-${var.name}-sg-lc"
//    Env         = "${var.env}"
//    Description = "${var.env} sg lc ${var.name}"
//  }
//}
