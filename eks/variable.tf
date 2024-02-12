variable "eks_role_arn" {
  default = "arn:aws:iam::269589842632:role/test-role-terraform-0212"
}

variable "eks_cluster_name" {
  default = "test-terraform-0212-new"
}

variable "subnet" {
  default = ["subnet-08fe8bf0fac57d099", "subnet-07c323d51fe4818eb"]
}
