
/*Networking Module | Stream Pool*/
module "stream-pools" {
  source            = "./modules/stream-pool"
  core-stream-pools = local.lst-stream-pools
  core-compartments = var.data-compartments
}

/*Networking Module | Stream*/
module "streams" {
  source            = "./modules/stream"
  core-streams      = local.lst-streams
  core-stream-pools = module.stream-pools.ids
  core-compartments = var.data-compartments
}
