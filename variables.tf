variable "project_id" {
  type        = string
  description = "(Required) The ID of the project in which the resource belongs."
}

variable "ip_address_name" {
  type        = string
  description = "(Required) Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash."
}

variable "ip_address" {
  type        = string
  description = "(Required) The IP address that this forwarding rule serves. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the target that you specify in the forwarding rule. For Private Service Connect forwarding rules that forward traffic to Google APIs, IP address must be provided."
  default     = ""
}

variable "network_name" {
  type        = string
  description = "(Optional) The URL of the network in which to reserve the IP range. The IP range must be in RFC1918 space. The network cannot be deleted if there are any reserved IP ranges referring to it. This should only be set when using an Internal address."
}

variable "forward_rule_name" {
  type        = string
  description = "(Required) Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash."
}

variable "forward_rule_target" {
  type        = string
  description = "(Required)  For global address with a purpose of PRIVATE_SERVICE_CONNECT and addressType of INTERNAL, only 'all-apis' and 'vpc-sc' are valid."
}
