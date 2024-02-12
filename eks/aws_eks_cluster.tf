provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_eks_cluster" "test-cluster" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = ["${var.subnet[0]}", "${var.subnet[1]}"]
  }
  depends_on = [
    aws_iam_role.eks_cluster_role
  ]

}
