# Remote State 
remote_state_key="PROD/baseinfra.tfstate"
remote_state_bucket="ecs-terraform-backend-state"

# Environment & Region
environment = "prod"
aws_region = "us-east-1"

# Manage Microservices 
microservices = {
  coupon = {
    image_tag             = "latest"
    container_port        = 8080
    spring_profiles       = "dev"
    per_container_cpu     = 512
    per_container_memory  = 1024
    health_check_path     = "/health"
    database_name         = "postgres"
    desired_task_count    = 2
  }
}
