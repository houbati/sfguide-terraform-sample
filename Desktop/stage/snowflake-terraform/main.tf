terraform {
  required_version = ">= 0.13.0"
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.10"
    }
  }
}

provider "snowflake" {
  region = "us-west-2"
  role     = "SYSADMIN"
  password = "Naima1993"
}


resource "snowflake_database" "db" {
  name = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "xsmall"

  auto_suspend = 60
}