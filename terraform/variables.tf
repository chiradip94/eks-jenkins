variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "tools-cluster"
}

variable "cluster_version" {
  description = "Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.21`)"
  type        = string
  default     = "1.21"
}

variable "region" {
  description = "Region for the resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  type        = string
  default     = "vpc-0bfc726b83ad08028"
}

variable "subnet_ids" {
  type        = list(string)
  default     = ["subnet-0fcce61dab8309ffb", "subnet-0fcc9cb29a028704c", "subnet-0be64831982f49944"]
}

variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled"
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled"
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}
