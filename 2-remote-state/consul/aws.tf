provider "consul" {
  address    = "192.168.99.100:8500"
}

provider "aws" {
}

# Setup a key in Consul to provide inputs
data "consul_keys" "input" {
  key {
    name    = "size"
    path    = "tf_test/size"
    default = "t2.micro"
  }
  key {
    name    = "ami"
    path    = "tf_test/ami"
    default = "ami-2757f631"
  }
}

resource "aws_instance" "example" {
  ami           = "${data.consul_keys.input.var.ami}"
  instance_type = "${data.consul_keys.input.var.size}"
}

# Setup a key in Consul to store the instance id and
# the DNS name of the instance
resource "consul_keys" "test" {
  key {
    name   = "id"
    path   = "tf_test/id"
    value  = "${aws_instance.example.id}"
    delete = true
  }

  key {
    name   = "address"
    path   = "tf_test/public_dns"
    value  = "${aws_instance.example.public_dns}"
    delete = true
  }
}
