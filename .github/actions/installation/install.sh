sudo pipx uninstall ansible-core || true

# Use versions that work together
sudo pip3 install --ignore-installed ansible-core==2.15.12
sudo pip3 install --ignore-installed 'rich>=10.0.0,<11.0.0'
sudo pip3 install --ignore-installed ansible-lint==6.22.2

# Verify installations
ansible --version
ansible-lint --version
