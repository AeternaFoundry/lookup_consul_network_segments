variable "network_segments_lookup" {
  description = <<EOT
Map of network_segments_lookup, attributes below
Optional:
    - datacenter
    - token
EOT

  type = map(object({
    datacenter = optional(string)
    token      = optional(string)
  }))
}

