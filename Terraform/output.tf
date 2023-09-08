output "private_ips" {
  value     = aws_instance.first_instance[*].private_ip
  sensitive = true
}

output "value_secret_stuff" {
  value     = data.vault_generic_secret.instance_size_demo.data["InstanceSize"]
  sensitive = true
}
