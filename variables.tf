variable "public_key_path" {
  description = "Path to file containing public key"
  default     = "~/.ssh/gcloud_id_rsa.pub"
}

variable "private_key_path" {
  description = "Path to file containing private key"
  default     = "~/.ssh/gcloud_id_rsa"
}

variable "service_account_key" {
  description = "Path to file containing service account GCP key"
  default     = "/home/User/devops-school-317412-e388b05e76b4.json"
}

variable "name" {
  description = "Set NAME of instace"
  type = string
}

variable "cpu" {
  description = "Enter the number of CPUs in multiples of 2 (only digit)"
  type = number
}

variable "ram" {
  description = "Enter RAM in Gb (only digit)"
  type = number
}

variable "image_map" {
  description = "Choose image"
  type = map(string)
  default = {
    u16 = "ubuntu-os-cloud/ubuntu-1604-lts"
    u18 = "ubuntu-os-cloud/ubuntu-1804-lts"
    u20 = "ubuntu-os-cloud/ubuntu-2004-lts"
  }
}

variable "image" {
  description = "Enter the IMAGE of Ubuntu (available names: u20, u18, u16)"
  type = string
}