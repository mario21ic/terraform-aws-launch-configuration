output "launch_configuration_id" {
  value = "${aws_launch_configuration.lc_def.id}"
}

output "launch_configuration_name" {
  value = "${aws_launch_configuration.lc_def.name}"
}

output "security_group_id" {
  value = "${aws_security_group.sg_lc.id}"
}