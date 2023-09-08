resource "aws_eip" "fixed_ip" {
  domain = "vpc"
  count  = lower(var.is_production) == "yes" ? 3 : 1
}

resource "aws_eip_association" "eip_assoc" {
  count         = lower(var.is_production) == "yes" ? 3 : 1
  instance_id   = aws_instance.first_instance[count.index].id
  allocation_id = aws_eip.fixed_ip[count.index].id
}