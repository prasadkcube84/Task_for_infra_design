variable "region" {
  default = "us-west-2"
}

variable "cluster_name" {
  default = "my-eks-cluster"
}

variable "vpc_id" {
  default = "vpc-*****" # Replace with your default VPC ID
}

variable "subnets" {
  default = ["subnet-*****", "subnet-*****"] 
}

variable "instance_type" {
  default = "t2.medium"
}