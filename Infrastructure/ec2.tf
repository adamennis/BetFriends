resource "aws_instance" "web-server-1" {

    ami = "${lookup(var.AMI, var.AWS_REGION)}"
    instance_type = "t2.micro"

    # VPC
    subnet_id = "${aws_subnet.my-subnet-public-1.id}"

    # Security Group
    vpc_security_group_ids = ["${aws_security_group.sg-with-ssh.id}"]

    # the Public SSH key
    key_name = "${aws_key_pair.dublin-region-key-pair.id}"

  #  # nginx installation
  #  provisioner "file" {
  #      source = "nginx.sh"
  #      destination = "/tmp/nginx.sh"
  #  }
#
#    provisioner "remote-exec" {
#        inline = [
#            "chmod +x /tmp/nginx.sh",
#            "sudo /tmp/nginx.sh"
#        ]
#    }
#
#    connection {
#        user = "${var.EC2_USER}"
#        private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
#
#    }
}

resource "aws_key_pair" "dublin-region-key-pair" {
    key_name = "dublin-region-key-pair"
    public_key = "${file(var.PUBLIC_KEY_PATH)}"
}