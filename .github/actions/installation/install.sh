# Clean up any existing conflicting installations
sudo pip3 uninstall ansible-lint ansible-core ansible ansible-base -y || true
sudo pipx uninstall ansible-core || true

# Clear pip cache to avoid version conflicts
sudo pip3 cache purge

# Install compatible versions
sudo pip3 install ansible-core==2.12.10
sudo pip3 install 'rich>=10.0.0,<11.0.0'
sudo pip3 install ansible-lint==5.3.2

# Verify installations
ansible --version
ansible-lint --version
