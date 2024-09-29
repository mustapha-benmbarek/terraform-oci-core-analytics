variable "core-compartments" {}
variable "core-stream-pools" {
  type = map(object({
    region-id    = optional(string)
    region-name  = optional(string)
    comp-id      = optional(string)
    comp-name    = string
    tpc-id       = optional(string)
    tpc-name     = string
    sub-id       = optional(string)
    sub-name     = optional(string)
    sub-protocol = string
    sub-endpoint = string
  }))
}
