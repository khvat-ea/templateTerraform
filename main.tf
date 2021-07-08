terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.74.0"
    }
  }
}

provider "google" {
  project = "devops-school-317412"
  region  = "us-central1"
  zone    = "us-central1-c"
}


#######################################################
# Create GCP instance
#######################################################
module "srv_build" {
  source = "./modules/instance"
  public_key_path = "${var.public_key_path}"
  private_key_path = "${var.private_key_path}"
  name = "${var.name}"
  cpu = "${var.cpu}"
  ram = "${var.ram}"
  image = "${var.image_map["${var.image}"]}"
}