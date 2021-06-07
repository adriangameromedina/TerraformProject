
resource "google_sql_database_instance" "localInstancia" {
	name = "basedatos-terraform"
	database_version = "MYSQL_5_7"
	region = "europe-west1"
	settings {
	tier = "db-n1-standard-2"
}
}
resource "google_sql_database" "baseTerraform" {
	name = "basededatos"
	instance = "${google_sql_database_instance.localInstancia.name}"
	charset = "utf8"
	collation = "utf8_general_ci"
}
resource "google_sql_user" "user_database" {
	name = "usuario"
	instance = "${google_sql_database_instance.localInstancia.name}"
	host = "%"
	password = "123456"
}