resource "aws_route53_zone" "mubeentech" {
  name = "mubeentech.shop"  # Change to your domain name
}

output "mubeentech" {
  value = "${aws_route53_zone.mubeentech.name_servers}"
  }
  
