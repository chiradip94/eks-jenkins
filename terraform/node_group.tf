module "nodegroup_role" {
  source = "./modules/iam"

  service_name        = "ec2"
  role_name           = local.nodegroup_role_name
  tags                = var.tags 
  cluster_iam_policy  = local.nodegroup_iam_policy
}

module "node_group" {
  source = "./modules/node_group"

  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "${var.cluster_name}-ng1"
  role_arn        = module.nodegroup_role.arn
  subnet_ids      = var.subnet_ids
}