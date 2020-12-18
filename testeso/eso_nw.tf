# module "gcp_nw" {
#   source                 = "../modules/netweaver"
#   post_deployment_script = ""
#   subnetwork             = "/projects/internal-naoxyatraininghost/regions/northamerica-northeast1/subnetworks/labnan1"
#   linux_image_family     = "rhel-8-1-sap-ha"
#   linux_image_project    = "rhel-sap-cloud"
#   autodelete_disk        = "true"
#   sap_deployment_debug   = "false"
#   usr_sap_size           = 100
#   sap_mnt_size           = 100
#   swap_size              = 30
#   instance_name          = "sapnwpas"
#   instance_type          = "n1-standard-2"
#   region                 = "northamerica-northeast1"
#   network_tags           = [ "sap", "internet", "ext-adm" ]
#   project_id             = "internal-naoxyatrainingservice"
#   zone                   = "northamerica-northeast1-b"
#   service_account_email  = "test-sap-telus@internal-naoxyatrainingservice.iam.gserviceaccount.com"
#   boot_disk_size         = 30
#   boot_disk_type         = "pd-balanced"
#   disk_type              = "pd-balanced"
#   startup_script         = file("../modules/netweaver/files/startup.sh")
#   instance_internal_ip   = "10.10.30.49"
#   public_ip              = "false"
# }