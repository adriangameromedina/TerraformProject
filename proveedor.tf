provider "google" {
	credentials= file("/home/usuario/Escritorio/ProyectoTerraform/claves.json")
	project= "918417250915"
	region= "europe-west1"
	zone= "europe-west1-b"
}