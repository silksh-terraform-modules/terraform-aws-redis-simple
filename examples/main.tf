module "redis" {
  source  = "github.com/silksh-terraform-modules/terraform-aws-redis-simple?ref=v0.0.1"

  env_name = var.env_name

  security_group_ids = [module.sg_services.security_group_id]

  subnet_ids = [module.vpc.service_subnet_a_id, module.vpc.service_subnet_b_id, module.vpc.service_subnet_c_id]

}

output "redis_endpoint" {
  value = module.redis.endpoint
}

output "redis_hostname" {
  value = module.redis.hostname
}

output "redis_port" {
  value = module.redis.port
}