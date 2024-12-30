output "vpc_cidr" {
    # value = "${aws_vpc.my_vpc.cidr_block}"
    value = "${aws_vpc.my_vpc[0].cidr_block}"
}
