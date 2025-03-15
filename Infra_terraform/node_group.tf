# Create the EKS node group (worker nodes)
resource "aws_eks_node_group" "eks_nodes" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "${var.cluster_name}-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = data.aws_subnet_ids.default.ids
  instance_types  = [var.node_instance_type]
  desired_size    = var.node_count
  max_size        = var.node_count + 1
  min_size        = var.node_count

  tags = var.tags
}