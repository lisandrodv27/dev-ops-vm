resource "aws_eks_cluster" "k8s_cluster" {
  name = "eks_cluster"
  role_arn = var.eks_arn

  vpc_config {
      security_group_ids = []
      subnet_ids = [var.eks_sn_id_pub, var.eks_sn_id_priv] 
  }

  version = "1.17"
}

resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.kubenetes_cluster.name
  node_group_name = "eks_node_group"
  node_role_arn   = var.node-role-arn
  subnet_ids      = [var.eks_sn_id_pub, var.eks_sn_id_priv]
  ami_type        = var.ami
  instance_types  = var.instance_type
 
  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }
 
}
   