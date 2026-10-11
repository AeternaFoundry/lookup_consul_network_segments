output "network_segments_lookup_id" {
  description = "Map of id values across all network_segments_lookup, keyed the same as var.network_segments_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_network_segments.network_segments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_segments_lookup_datacenter" {
  description = "Map of datacenter values across all network_segments_lookup, keyed the same as var.network_segments_lookup except keys with no datacenter are omitted"
  value       = { for k, v in data.consul_network_segments.network_segments_lookup : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "network_segments_lookup_segments" {
  description = "Map of segments values across all network_segments_lookup, keyed the same as var.network_segments_lookup except keys with no segments are omitted"
  value       = { for k, v in data.consul_network_segments.network_segments_lookup : k => v.segments if v.segments != null && length(v.segments) > 0 }
}
output "network_segments_lookup_token" {
  description = "Map of token values across all network_segments_lookup, keyed the same as var.network_segments_lookup except keys with no token are omitted"
  value       = { for k, v in data.consul_network_segments.network_segments_lookup : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

