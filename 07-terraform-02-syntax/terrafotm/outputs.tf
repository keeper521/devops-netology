output "account_id" {
  value       = "${data.aws_caller_identity.current.account_id}"
}

output "caller_user" {
  description = "Caller_user"
  value       = "${data.aws_caller_identity.current.user_id}"
}

output "aws_region" {
  description = "AWS region"
  value       = "${data.aws_region.current.name}"
}

output "instance_ip_addr" {
  description = "The private IP address of the main server instance."  
  value       = "aws_network_interface.private_ips"
  depends_on  = [
    aws_security_group_rule.local_access,
  ]
}

output "subnet_ids" {
  description = "Subnet id"
  value       = "aws_network_interface.subnet.id"
}
