# Ansible infra

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