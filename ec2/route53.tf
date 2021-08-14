resource "aws_route53_record" "www" {
  zone_id = "Z0037387397M2ULLEHH1U"
  name    = "wordpress.guldaray.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}