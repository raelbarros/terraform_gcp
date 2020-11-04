provider "google" {
  project = "totemic-web-267621"
  region  = "us-east1"
  zone    = "us-east1-b"
}

resource "google_compute_instance" "vm_terraform" {
  name         = "first-vm"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
      network = "default"
      access_config {
      }
  } 

/*
  ## Como referenciar um objeto do GCP
  network_interface {
    network = google_compute_network.vpc_terraform.self_link
    access_config {
    }
  }
*/

}
/*
resource "google_compute_network" "vpc_terraform" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}
*/