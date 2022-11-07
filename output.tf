output "global-address-id" {
  value = google_compute_global_address.psc.id
}

output "global-forwarding-rule-id" {
  value = google_compute_global_forwarding_rule.psc.id
}
