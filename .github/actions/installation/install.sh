sudo pipx uninstall ansible-core
sudo pip3 install --ignore-installed ansible-core==2.14.15
sudo pip3 install --ignore-installed 'rich>=10.0.0,<11.0.0'
sudo pip3 install --ignore-installed ansible-lint==6.8.7

# Verify installations
ansible --version
ansible-lint --version
