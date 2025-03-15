variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "region" {
  description = "AWS region to deploy the resources in"
  type        = string
  default     = "us-west-2"
}

variable "node_instance_type" {
  description = "The EC2 instance type for the worker node"
  type        = string
  default     = "t2.micro"
}

variable "node_count" {
  description = "Number of worker nodes"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Terraform   = "true"
  }
}