include .env
export

run-playbook:
	ansible-playbook -i inventory.ini site.yml
