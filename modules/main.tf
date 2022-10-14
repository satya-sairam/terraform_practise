module "ec2" {
  source  = "./ec2"
  SG_ID   =  module.sg.sg_id
}

module "sg" {
  source = "./sg"
}