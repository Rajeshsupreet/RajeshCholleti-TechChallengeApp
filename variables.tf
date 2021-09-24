variable "docker_image" {
  type        = string
  description = "Docker image to use"
  default     = "servian/techchallengeapp:latest"
}

variable "cf_app_name" {
  type        = string
  description = "The CF app name"
  default     = "techchallenge-app"
}

variable "cf_org_name" {
  type        = string
  description = "The CF Org to deploy under"
}
variable "cf_domain_name" {
  type        = string
  description = "The CF domain to use for app"
  default     = "cloud.pcftest.com"
}

variable "cf_username" {
  type        = string
  description = "Cloud foundry username"
}

variable "cf_password" {
  type        = string
  description = "Cloud foundry password"
  sensitive   = true
}

variable "cf_api" {
  default     = "https://api.cloud.pcftest.com"
  type        = string
  description = "Cloud foundry API endpoint (region specific)"
}

variable "cf_region" {
  default     = "us-east"
  type        = string
  description = "Cloud foundry region"
}

variable "memory" {
  type        = number
  description = "The amount of RAM to allocate for app (MB)"
  default     = 1024
}

variable "disk" {
  type        = number
  description = "The amount of Disk space to allocate for app (MB)"
  default     = 1024
}

variable "db_plan" {
  type        = string
  description = "The Database plan to use"
  default     = "postgres-micro-dev"
}

variable "listenport" {
  type        = number
  description = "The listenport of the app "
  default     = "8080"
}

variable "listenhost" {
  type        = string
  description = "The listenhost of the app"
  default     = "0.0.0.0"
}

variable "db_broker" {
  type        = string
  description = "The Database broker to use for requesting a PostgreSQL database"
  default     = "hsdp-rds"
}

variable "cf_space_id" {
  type        = string
  description = "The id of the CF Space to deploy in"
}

variable "cf_db_name" {
  type        = string
  description = "The name of the database"
  default     = "servian-db"
}