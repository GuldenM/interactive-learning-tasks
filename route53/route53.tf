resource "aws_route53_record" "www" {
  zone_id = "Z0037387397M2ULLEHH1U"
  name    = "blog.guldaray.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}