resource "google_compute_instance" "web" {
  name         = "webserver"
  machine_type = var.machine_type

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-1804-bionic-v20220613"
    }
  }

  metadata_startup_script = file("./startup.sh")

  scheduling {
    preemptible       = true
    automatic_restart = false
  }

  network_interface {
    network = "default"
    access_config {

    }

  }
}