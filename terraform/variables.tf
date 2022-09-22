variable "yc_reserved_ip" {
  default = "51.250.95.60"
}

#Токен доступа к yandex.cloud export TF_VAR_yc_token=$(yc iam create-token)
variable "token" {
  type      = string
  default = "заполнить из export TF_VAR_token=$(yc iam create-token) или ввести"
  sensitive = true
}

#ID облака  export TF_VAR_yc_cloud_id=$(yc config get cloud-id)
variable "cloud_id" {
  type    = string
  default = "b1gok3dma83ao89b12k3"
}

#ID каталога export TF_VAR_yc_folder_id=$(yc config get folder-id)
variable "folder_id" {
  type    = string
  default = "b1gplgsgpv919s8ut7sr"
}

#Доменное имя
variable "domain_name" {
  type    = string
  default = "smartnethome.site"
}
