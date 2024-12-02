variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of the VM instance"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of the base image"
}

#variable "vm_web_cores" {
#  type        = number
#  default     = 2
#  description = "Number of CPU cores for the VM"
#}

#variable "vm_web_memory" {
#  type        = number
#  default     = 1
#  description = "Memory size (in GB) for the VM"
#}

#variable "vm_web_core_fraction" {
#  type        = number
#  default     = 5
#  description = "Core fraction for the VM"
#}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Whether the VM is preemptible"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Enable NAT for the VM"
}


variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name of the Platform DB VM instance"
}

#variable "vm_db_cores" {
#  type        = number
#  default     = 2
#  description = "Number of CPU cores for Platform DB VM"
#}

#variable "vm_db_memory" {
#  type        = number
#  default     = 2
#  description = "Memory size (in GB) for Platform DB VM"
#}

#variable "vm_db_core_fraction" {
#  type        = number
#  default     = 20
#  description = "Core fraction for Platform DB VM"
#}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "Zone for Platform DB VM"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "Whether the Platform DB VM is preemptible"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "Enable NAT for Platform DB VM"
}
