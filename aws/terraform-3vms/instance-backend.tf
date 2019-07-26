resource "aws_instance" "backend" {
  # ubuntu 18.04
  ami = "ami-0c30afcb7ab02233d"
  instance_type = "t2.micro"
    tags = {
    Name = "backend"
  }
  subnet_id = "${aws_subnet.default.id}"
  vpc_security_group_ids = ["${aws_security_group.backend.id}"]
  associate_public_ip_address = true
  private_ip = "10.0.0.22"
  key_name = "default-key-pair"
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      host = "${self.public_ip}"
      user = "ubuntu"
      private_key = "${file("~/.ssh/id_rsa")}"
    }
    inline = [
      "echo ***** UPDATING *****",
      "sudo apt update",
      "echo ***** INSTALL GIT *****",
      "sudo apt install git -y",
      "echo ***** CLONING SCRIPTS *****",
      "git clone https://github.com/JPeckoverQA/scripts.git",
      "echo ***** INSTALL DOCKER *****",
      "./scripts/docker/install-docker.sh",
      "echo ***** INSTALL DOCKER-COMPOSE *****",
      "./scripts/docker-compose/install-docker-compose.sh",
      "echo ***** POOL APP SET UP *****",
      "sudo docker pull jpeckover/pool-backend-aws-terraform:latest",
      "sudo docker run -d --name backend -e MONGO_HOST=${aws_instance.mongo.private_ip} -p 8080:8080 jpeckover/pool-backend-aws-terraform:latest"      
    ]
  }
}

