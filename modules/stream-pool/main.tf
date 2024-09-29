/*Resource creation: Subscription*/
resource "oci_ons_subscription" "this" {
  for_each       = var.core-subscriptions
  compartment_id = var.core-compartments[each.value.comp-name].id
  topic_id       = var.core-topics[each.value.tpc-name].id
  endpoint       = each.value.sub-endpoint
  protocol       = each.value.sub-protocol
}
