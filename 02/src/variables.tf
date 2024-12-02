###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "default_zoneb" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "defaultb_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vpc_nameb" {
  type        = string
  default     = "developb"
  description = "VPC network & subnet name"
}

variable "vpc_namea" {
  type        = string
  default     = "developa"
  description = "VPC network & subnet name"
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
  description = "Resource configuration for VMs"
}

variable "metadata" {
  type = map(string)
  description = "Metadata configuration for all VMs"
}

###ssh vars

#variable "vms_ssh_root_key" {
#  type        = string
#  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAh4Gh5PrknxcjYhoqsLGxGJo6KF+SdTSTlN3gaU94M7y6FlaDzoSMHMWc1HG02R+kDXHl3heUWHdZFoevpwE/z598fdo/CLMVBAPT7eKqDEmco29s4/cEtm+Z7PddTVoXrfZEnCOlsbe3MTrRuAihOwiVQMKwPK4Oi127TiV6BHxHhevyr91nGQQF9FFYh/q6zxka128cw7XTZbz/DwdmIZB+WUHWGKZueJ2FCa2rN8TM6z1mwW6WBXiZg7n20d6jQXT3SmKgPsRmFmr90mwga1xg7YO7LWbZbDxmg5O3aUrx4EU/nMb2x+bWI3V6POrfOTH53lb/WtVZoppxBzA3TQ== rsa-key-20241130"
#  description = "ssh-keygen -t ed25519"
#}
