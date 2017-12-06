# Terraform with Consul Backend

## Prerequisites

### Run a Consul Server

If you have Docker, you can run:

```
docker run -d --name consul-server -e CONSUL_BIND_INTERFACE=eth0 -p 8500:8500 -p 8400:8400 -p 8600:8600 consul
```

You can then visit `http://localhost:8500` (or `http://DOCKER_TOOLBOX_IP:8500` if you are using Docker Toolbox) to browse the Consul GUI.
