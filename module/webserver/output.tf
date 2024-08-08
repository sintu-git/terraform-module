output publicIP {
  value       = aws_instance.webserver.public_ip
}

output "vpc_id" {
    value = aws_vpc.my-vpc.id
}