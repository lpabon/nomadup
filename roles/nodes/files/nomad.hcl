# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Full configuration options can be found at https://www.nomadproject.io/docs/configuration

data_dir  = "/opt/nomad/data"
bind_addr = "0.0.0.0"

client {
  enabled = true
  #servers = ["lpabon-nomad-master"]
  server_join {
    retry_join = ["lpabon-nomad-master"]
  }
}
