
/*Networking Module | Stream Pool*/
module "stream-pools" {
  source            = "./modules/stream-pool"
  core-compartments = var.data-compartments
  core-stream-pools = local.lst-stream-pools
}

/*Networking Module | Stream*/
module "streams" {
  source            = "./modules/stream"
  core-compartments = var.data-compartments
  core-streams      = local.lst-streams
  core-stream-pools = module.stream-pools.ids
}
