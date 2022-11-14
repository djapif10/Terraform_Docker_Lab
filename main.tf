terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
}

provider "docker" {}

resource "docker_image" "techmax" {
  name         = "fdjapi10/techmax:v1"
  keep_locally = false
}

resource "docker_container" "TechmaxPro" {
  image = docker_image.techmax.v1
  name  = "E-Commerce"
  ports {
    internal = 80
    external = 9000
  }
}
