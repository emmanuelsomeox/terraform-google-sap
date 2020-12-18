
module "gcp_sap_hana_ha" {
  source                     = "../modules/sap_hana_ha"
  subnetwork                 = "/projects/internal-naoxyatraininghost/regions/northamerica-northeast1/subnetworks/labnan1"
  linux_image_family         = "rhel-8-1-sap-ha"
  linux_image_project        = "rhel-sap-cloud"
  instance_type              = "n1-highmem-32"
  network_tags               = [ "sap", "internet", "ext-adm" ]
  project_id                 = "internal-naoxyatrainingservice"
  region                     = "northamerica-northeast1"
  service_account_email      = "test-sap-telus@internal-naoxyatrainingservice.iam.gserviceaccount.com"
  boot_disk_size             = "30"
  boot_disk_type             = "pd-balanced"
  autodelete_disk            = "true"
  # pd_ssd_size                = "834"
  # pd_hdd_size                = "416"
  sap_hana_deployment_bucket = "oxya-lab-cds/HANA20_SPS05"
  sap_deployment_debug       = "false"
  post_deployment_script     = ""
  sap_hana_sid               = "NH1"
  primary_instance_name      = "btln008590"
  secondary_instance_name    = "btln008591"
  primary_zone               = "northamerica-northeast1-b"
  secondary_zone             = "northamerica-northeast1-c"
  sap_hana_instance_number   = 12
  sap_hana_sidadm_password   = "Starwars2020"
  sap_hana_system_password   = "Starwars2020"
  sap_hana_sidadm_uid        = 1202
  sap_hana_sapsys_gid        = 241
  sap_vip                    = "10.10.30.165"
  # sap_vip_secondary_range    = var.sap_vip_secondary_range
  public_ip                  = "false"
  primary_instance_ip        = ""
  secondary_instance_ip      = ""
  sap_vip_internal_address   = "sap-vip-internal-address"
  startup_script_1           = file("../modules/sap_hana_ha/files/startup.sh")
  startup_script_2           = file("../modules/sap_hana_ha/files/startup_secondary.sh")
  disk_name_0                = "btln008590-pdssd"
  disk_name_1                = "btln008590-backup"
  disk_name_2                = "btln008591-pdssd"
  disk_name_3                = "btln008591-backup"
  primary_instance_internal_ip = "10.10.30.166"
  secondary_instance_internal_ip = "10.10.30.167"
  # can_ip_forward             = var.can_ip_forward
}