# compute.tf

# Create EC2 Instance
resource "aws_instance" "bastion_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id[0]
  vpc_security_group_ids      = var.vpc_security_group_ids
  source_dest_check           = false
  key_name                    = var.aws_ssh_key_name
  associate_public_ip_address = var.associate_public_ip_address

  lifecycle {
    ignore_changes = [ami]
  }

  tags = merge(
    { "Name" = "${var.environment_prefix}-${var.group}-Bastion" },
    var.tags,
  )
}

# Create Elastic IP for the EC2 instance
resource "aws_eip" "instance-eip" {
  vpc = true
  tags = merge(
    { "Name" = "${var.environment_prefix}-${var.group}-Bastion" },
  )
}
# Associate Elastic IP association
resource "aws_eip_association" "bastion_eip_association" {
  instance_id   = aws_instance.bastion_instance.id
  allocation_id = aws_eip.instance-eip.id
}

