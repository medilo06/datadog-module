terraform {
  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "~>3.42"
    }
  }
  required_version = "~>1.9.2"
}