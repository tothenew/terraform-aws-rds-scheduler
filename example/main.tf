provider "aws" {
  region = local.region
}

locals {
  region = "us-east-1"
}

module "rds-scheduler" {
  source     = "../"
  identifier = var.identifier
  cron_start = var.cron_start
  cron_stop  = var.cron_stop
}
