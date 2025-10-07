sudo pipx uninstall ansible-core || true

# Install with --ignore-installed to skip system packages
sudo pip3 install --ignore-installed ansible-core>=2.12.0
sudo pip3 install 'rich>=10.0.0,<11.0.0'
sudo pip3 install ansible-lint==24.9.2

# Verify installations
ansible --version
ansible-lint --version
