variable "project" {
	default = "terraform-mean-app-1562834068"
}
//vm name 
variable "name" {
  default = "mongodb"
}
variable "name1" {
  default = "api"
}

variable "name2" {
  default = "angular"

variable "machine_type" {
	default = "f1-micro"
}

variable "zone" {
	default = "europe-west2-c"
}

variable "image" {
	default = "ubuntu-1804-lts"
}

variable "network" {
	default = "default"
}

variable "ssh_user" {
	default = "terraform"
}

variable "public_key" {
	default = "~/.ssh/id_rsa.pub"
}

variable "private_key" {
	default = "~/.ssh/id_rsa"
}

variable "package_manager" {
	default = "apt"
}

variable "update_packages" {
	default = {
		"apt" = "sudo apt update && sudo apt upgrade -y"
	}
}

variable "packages" {
	default = [
		"wget"
	]
}

variable "install_packages" {
	default = {
		"apt" = "sudo apt install -y"
	}
}

variable "scripts" {
	default = [
		"pool-manager"
	]
}
variable "mongo" {
  default = "scripts/mongodb"
}
variable "api" {
  default = "scripts/api"
}

variable "allowed_ports" {
	default = ["22"]
}

variable "allowed_angular" {
  default = ["4200"]
}

variable "allowed_node" {
  default = ["8080"]
}

