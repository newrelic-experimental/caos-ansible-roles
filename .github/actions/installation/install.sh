sudo pipx uninstall ansible-core
sudo pip3 install 'rich>=10.0.0,<11.0.0'
sudo pip3 install ansible-lint==6.10.0

# Verify installations
ansible --version
ansible-lint --version
