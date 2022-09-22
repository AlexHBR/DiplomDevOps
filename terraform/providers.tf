terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
	endpoint   = "storage.yandexcloud.net"
	bucket     = "s3smartnethome"
	region     = "ru-central1"
	key        = "terraform.tfstate"
	access_key = "YCAJ"
	secret_key ="YCMBP"
	skip_region_validation      = true
	skip_credentials_validation = true

  }
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = "ru-central1-a"
}
