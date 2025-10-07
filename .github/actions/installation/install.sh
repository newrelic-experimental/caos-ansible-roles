sudo pipx uninstall ansible-core
sudo pip3 install --ignore-installed 'rich>=10.0.0,<11.0.0'
sudo pip3 install --ignore-installed ansible-lint==6.0.2

# Verify installations
ansible --version
ansible-lint --version
