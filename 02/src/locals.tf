locals {
  vm_names = {
    platform_web = "${var.vpc_name}-platform-web-${var.default_zone}"
    platform_db  = "${var.vpc_name}-platform-db-${var.vm_db_zone}"
  }
}
