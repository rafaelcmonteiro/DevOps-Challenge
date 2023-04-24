module "database" {
  source            = "../../modules/database"
  RDS_NAME          = var.RDS_NAME
  DB_USERNAME       = var.DB_USERNAME
  DB_PASSWORD       = var.DB_PASSWORD
  DB_NAME           = var.DB_NAME
  DB_ENGINE         = var.DB_ENGINE
  DB_ENGINE_VERSION = var.DB_ENGINE_VERSION
}
