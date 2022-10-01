# Overview

A role to install and configure the Caddy web server. The main use case for a webserver in this environment is as a reverse proxy to services running on the droplet, so that is the only functionality that has been included in this particular role.

Downloads the package from the official Caddy package repo. Debian/Ubuntu only.

Sets up a central config that points to a `sites-enabled/` dir that contains individual config for each site.

Caddy will automatically arrange a letsencrypt TLS certificate if TLS is enabled,

# Inputs

`caddy_reverse_proxy_sites` - A list of sites with these parameters:
```
caddy_reverse_proxy_sites:
  - site: my.awesome.site
    backend: https://localhost:65534
    http_transport_options: |
      tls
      tls_insecure_skip_verify
```