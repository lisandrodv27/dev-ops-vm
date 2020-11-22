variable "eks_arn" {
    default = "arn:aws:iam::874021699381:role/eks-cluster-role"
}

variable "eks_node_arn" {
    default = "arn:aws:iam::874021699381:role/eks-node-group"
}

variable "eks_sg_id"{
    default = module.vpc_mod.var.
}

variable "eks_sn_id_pub" {
    default = module.vpc_mod.var.public_subnet_id
}

variable "eks_sn_id_priv" {
    default = module.vpc_mod.var.private_subent_id
}

variable "ami" {
    default = module.ec2_mod.var.ami
}

variable "instance_type" {
    default = module.ec2_mod.var.instance_type
}

