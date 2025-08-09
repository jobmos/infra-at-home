# Infra at home

This repository contains the IaC for my home setup. As this is a new venture,
the current setup consists of a single Raspberry Pi Zero 2W. 
This Pi is currently running:

- PiHole with custom DNS records
- Prometheus for scraping metrics
- Node exporter to expose CPU, RAM and disk metrics
- PiVPN with WireGuard to expose the home network to the public
- NGINX for forwarding subdomain DNS requests to localhost ports

## Dependencies

### Ansible commands

```bash
pip install ansible
```

### Mac as control node

We need `gnu-tar` for the prometheus collection when using a Mac as control node.

```
brew install gnu-tar
```

### Ansible Prometheus by Prometheus

```bash
ansible-galaxy collection install prometheus.prometheus
```

### Ansible node exporter by Jeff Geerling

```bash
ansible-galaxy role install geerlingguy.node_exporter
```

## Runing the playbook

First, copy the contents of `example.env` into a new file called `.env` and
adjust the content according to your needs.

To run the playbook, activate the Python enviroument and run

```bash
make run-playbook
```