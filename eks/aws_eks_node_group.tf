resource "aws_eks_node_group" "test-nodegroup" {
  cluster_name    = var.eks_cluster_name
  node_group_name = "test-terraform-nodegroup-0212-new"
  node_role_arn   = aws_iam_role.eks_nodegroup_role.arn
  subnet_ids      = var.subnet

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
  depends_on = [
    aws_eks_cluster.test-cluster,
    aws_iam_role.eks_nodegroup_role
  ]
}
