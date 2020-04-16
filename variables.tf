variable "aws_access_key_id" {
  description = "AWS access key"
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "alb_tg" {
  description = "The Main ALB Target Group"
  default     = "tf-ecs-tomcat"
}

variable "alb_tg_app" {
  description = "The Application ALB Target Group"
  default     = "tf-ecs-tomcat-app"
}

variable "alb_sg" {
  description = "The Main ALB Security Group"
  default     = "tf-ecs-tasks"
}

variable "alb_sg_app" {
  description = "The Application ALB Security Group"
  default     = "tf-ecs-tasks-app"
}

variable "ecs_cluster" {
  description = "The Name of the ECS Cluster"
  default     = "tf-ecs-cluster"
}

variable "ecs_service" {
  description = "The Name of the ECS Service"
  default     = "tf-ecs-service"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "availability_zones" {
  type = "list"
}

variable "main_vpc" {}
variable "main_network_cidr" {}
variable "region" {}

variable "app" {
  default = "app"
}

variable "container_name" {
  description = "The name of the container to be created in ECR"
  default     = "tomcat-ecs"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "tomcat-ecs:latest"
}

variable "app_image_path" {
  description = "Docker path of image to run in the ECS cluster"
  default     = "200237713294.dkr.ecr.us-east-1.amazonaws.com"
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}
