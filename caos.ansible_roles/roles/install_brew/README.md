Install brew in Mac

```yaml
# Install latest
- name: install brew
  include_role:
    name: install-brew

# Install specific version
- name: install brew
  include_role:
    name: install-brew
    vars:
      brew_version: 3.6.21 # with 4.0.* there are some problems with sudo https://github.com/Homebrew/brew/issues/14462#issuecomment-1445130069
```
