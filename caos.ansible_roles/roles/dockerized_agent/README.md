# Dockerized Agent role

Setup and run the [./templates/docker-compose.yml.j2](./templates/docker-compose.yml.j2):
```yaml
- name: Copy and run templates/docker-compose.yml file
  include_role:
    name: dockerized_agent
  vars:
    dockerfile_directory: "/tmp/otel_canaries"
    current_image: "otel/opentelemetry-collector:0.70.0"
    previous_image: "otel/opentelemetry-collector:0.69.0"
    container_prefix: "otelcanaries"
```
