resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "developa" {
  name           = var.vpc_namea
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

resource "yandex_vpc_subnet" "developb" {
  name           = var.vpc_nameb
  zone           = var.default_zoneb
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.defaultb_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image_family
}
resource "yandex_compute_instance" "platform_web" {
  name = local.vm_names.platform_web

  resources {
    cores         = var.vms_resources.web.cores
    memory        = var.vms_resources.web.memory
    core_fraction = var.vms_resources.web.core_fraction
  }

  boot_disk {
    initialize_params {
      size      = var.vms_resources.web.hdd_size
      type      = var.vms_resources.web.hdd_type
      image_id  = data.yandex_compute_image.ubuntu.image_id
    }
  }

  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.developa.id
    nat       = var.vm_web_nat
  }

  metadata = var.metadata
}
resource "yandex_compute_instance" "platform_db" {
  name = local.vm_names.platform_db

  resources {
    cores         = var.vms_resources.db.cores
    memory        = var.vms_resources.db.memory
    core_fraction = var.vms_resources.db.core_fraction
  }

  boot_disk {
    initialize_params {
      size      = var.vms_resources.db.hdd_size
      type      = var.vms_resources.db.hdd_type
      image_id  = data.yandex_compute_image.ubuntu.image_id
    }
  }

  scheduling_policy {
    preemptible = var.vm_db_preemptible
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.developb.id
    nat       = var.vm_db_nat
  }

  metadata = var.metadata

  zone = var.vm_db_zone
}
