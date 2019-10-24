## Overview

Downloads node_exporter and adds a systemd service - no configuration as yet

## Variables

Defaults that might need changing:

```
node_exporter_version: 0.18.1
node_exporter_filename: "node_exporter-{{ node_exporter_version }}.linux-amd64"
node_exporter_final_dest: /usr/local/bin/node_exporter
```
