#------------------------------------------------------------------------------
# ECS Configurations
#------------------------------------------------------------------------------
module "ecs" {
  source              = "../modules/tf-ecs"
  name                = var.name
  account_id          = var.account_id
  account_name        = var.account_name
  aws_region          = var.region
  vpc_id              = data.aws_ssm_parameter.vpc_id.value
  vpc_ip_cidr         = data.aws_ssm_parameter.vpc_cidr.value
  private_subnet_ids  = local.private_subnet_ids
  public_subnets_ids  = local.public_subnet_ids
  ssl_certificate_arn = data.aws_ssm_parameter.certificate_arn.value
  container_name      = var.name
  image               = "chriscloudaz/netflix:latest" #"194626909496.dkr.ecr.eu-west-1.amazonaws.com/jones"
  app_port            = 80
  app_count           = 2
  container_memory    = 2048
  container_cpu       = 1024
  zone_id             = var.zone_id
  dns_record_name     = "ecs"
  health_check_path   = "/"
}

#--------------------------------------------------------
