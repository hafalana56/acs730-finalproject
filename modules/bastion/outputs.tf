# outputs.tf

output "instance_ip" {
  value = aws_eip.instance-eip.public_ip
}

output "instance_id" {
  value = aws_instance.bastion_instance.id
}