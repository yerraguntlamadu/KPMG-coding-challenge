resource "google_sql_database" "database" {
name = var.datbase_name
instance = google_sql_database_instance.master.name
charset = var.charset
collation = var.collation
}

resource "google_sql_database_instance" "master" {
name = var.instance_name_db
database_version = var.database_version
deletion_protection = false
settings {
tier = var.tier
}
}