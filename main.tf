data "consul_network_segments" "network_segments_lookup" {
  for_each = var.network_segments_lookup

  datacenter = each.value.datacenter
  token      = each.value.token
}

