resource "aws_route53_record" "expense" {
  count = length(var.instances)
  # count = 3
  zone_id = var.zone_id
  name    = var.instances[count.index] == "frontend" ? var.domain_name : "${var.instances[count.index]}-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = var.instances[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  allow_overwrite = true
}

# resource "aws_route53_record" "frotend" {
#   count = 3
#   zone_id = var.zone_id
#   name    = "${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.expense[1].public_ip]
#   allow_overwrite = true
# }