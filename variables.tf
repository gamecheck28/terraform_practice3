variable "vpc_cidr" {
    description = "choose cidr for vpc"
    type = string
    default = "172.31.0.0/16"
}

variable "region" {
    description = "choose region for your stack work"
    type = string
    default = "ap-south-1"
}