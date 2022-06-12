provider "google" {

  credentials = file("~/.gcp/ftg-gcp-bf32f05dc1d1.json")
  project = local.project_id
  region  = local.region
  zone    = local.zone
}
