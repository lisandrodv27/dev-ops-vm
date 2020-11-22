variable "eks_cluster_arn" {
    default = "arn:aws:iam::874021699381:role/eks-cluster-role"
}

variable "eks_node_arn" {
    default = "arn:aws:iam::874021699381:role/eks-node-group"
}

variable "eks_sg_id" {
}

variable "eks_sn_id_pub" {
}

variable "eks_sn_id_priv" {
}

variable "ami_type" {
    default = "AL2_x86_64"
}

variable "instance_type" {
    default = "t3.small"
}

