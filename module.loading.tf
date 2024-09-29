/*Data loading...*/
locals {
  json-streams      = try(jsondecode(file(var.json-streams)), [])
  json-stream-pools = try(jsondecode(file(var.json-stream-pools)), [])
}

/*Data decoding...*/
locals {
  lst-streams      = try({ for obj in local.json-topics.data : obj.strm-name => obj }, tomap({}))
  lst-stream-pools = try({ for obj in local.json-subscriptions.data : obj.strmp-name => obj }, tomap({}))
}
