resource "aws_vpc" "my_vpc" {
    #count = "${terraform.workspace == "dev" ? 1 : 1}"
    count = "1"
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "default"

    tags = {
        Name = "${local.vpc_name}"
        Environment = "${terraform.workspace}"
        Location = "India"
    }
}

resource "aws_subnet" "main" {
    count = 3
    vpc_id = "${aws_vpc.my_vpc[0].id}"
    cidr_block = "${cidrsubnet(var.vpc_cidr, 8, count.index)}"

    tags = {
        Name = "subnet-${count.index}"
    }
}