provider "aws" {
    region = "${var.region}"
}

terraform {
    backend "s3" {
        bucket = "myapp-bucket-practice2"
        key = "terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "javahome-tf"
    }
}
