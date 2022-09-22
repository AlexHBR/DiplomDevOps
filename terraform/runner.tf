resource "yandex_compute_instance" "runner" {
  name     = "runner"
  hostname = "runner.smartnethome.site"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8mn5e1cksb3s1pcq12"
      size     = 6
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = false
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }
}