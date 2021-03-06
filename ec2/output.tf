output "az" {
    value = aws_instance.web.availability_zone
}
output "region" {
    value = "us-east-1"
}
output "public_ip" {
    value = aws_instance.web.public_ip
}
output "instance_id" {
    value = aws_instance.web.id
}    