# Preprering system for ansible instalation, root user permissions required.
python-deps:
	sudo apt install python3 && sudo apt install python3-venv && sudo apt install python3-pip

# Create Virtual env with requirements
virtual-env:
	python3 -m venv venv && venv/bin/pip install -r requirements.txt

# Run mysql configuration
mysql-config:
	venv/bin/ansible-playbook ./main.yaml -vvv