terraform {
  backend "gcs"{
    bucket      = "terraform_state_gke"
    credentials = "/home/etzi71/gke-cluster/clouddeploy-311607-40393ee33978.json"
  }
}
