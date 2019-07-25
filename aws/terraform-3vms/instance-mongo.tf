resource "aws_instance" "mongo" {
  # ubuntu 18.04
  ami = "ami-0c30afcb7ab02233d"
  instance_type = "t2.micro"
    tags = {
    Name = "mongo"
  }
  subnet_id = "${aws_subnet.default.id}"
  vpc_security_group_ids = ["${aws_security_group.mongo.id}"]
  associate_public_ip_address = true
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
      "echo ***** INSTALLING MONGO IMAGE *****",
      "sudo docker run -d --name mongo mongo:latest"
    ]
  }
}

