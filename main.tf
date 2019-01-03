module "lamp-server" {
  source                  = "github.com/IGNW/terraform-vsphere-lamp"

  hostname                = "lamp"
  domain                  = "corpintra.net"
  vsphere_server          = "tadcm0000275.apac.lab.corpintra.net"
  vsphere_datacenter      = "Lab.SG"
  vsphere_datastore       = "Lab-Storage"
  vsphere_compute_cluster = "Lab"
  vsphere_network         = "ICS-POC"
  disk_template           = "ubuntu16_template"
  num_cpus                = 2
  memory_mb               = 4000
  root_volume_size        = 50
  vsphere_user            = "ticrall@apac"
  vsphere_password        = "${var.vsphere_password}"
  terraform_password      = "${var.terraform_password}"
}
