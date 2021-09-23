data "cloudfoundry_org" "org" {
  name = var.cf_org_name
}

data "cloudfoundry_service" "rds" {
  name = var.db_broker
}

data "hsdp_config" "cf" {
  service = "cf"
}

data "cloudfoundry_domain" "domain" {
  name = var.cf_domain_name
}

resource "cloudfoundry_app" "servianapp" {
  name         = var.cf_app_name
  space        = var.cf_space_id
  memory       = var.memory
  disk_quota   = var.disk
  docker_image = var.docker_image
  health_check_type = "process"
  command           = "./TechChallengeApp updatedb -s && ./TechChallengeApp serve"
 environment = merge({
    VTT_DBUSER     = cloudfoundry_service_key.database-key.credentials.username
    VTT_DBPASSWORD = cloudfoundry_service_key.database-key.credentials.password
    VTT_DBHOST     = cloudfoundry_service_key.database-key.credentials.hostname
    VTT_DBNAME = cloudfoundry_service_key.database-key.credentials.db_name
    VTT_LISTENPORT = var.listenport
    VTT_LISTENHOST = var.listenhost 
    })
  
  routes {
    route = cloudfoundry_route.servianapp.id
  }

}

resource "cloudfoundry_service_instance" "database" {
  name         = var.cf_db_name
  space        = var.cf_space_id
  service_plan = data.cloudfoundry_service.rds.service_plans[var.db_plan]
}

resource "cloudfoundry_route" "servianapp" {
  domain   = data.cloudfoundry_domain.domain.id
  space    = var.cf_space_id
  hostname = var.cf_app_name
}

resource "cloudfoundry_service_key" "database-key" {
  name = "postgres-key"
  service_instance = cloudfoundry_service_instance.database.id
}