# Raw Dataset
resource "google_bigquery_dataset" "raw_dataset" {
  dataset_id = "employee_details_raw"
  location   = var.dataset_location

  lifecycle {
    prevent_destroy = false
  }
}
# Raw Tables
resource "google_bigquery_table" "raw_table" {
  dataset_id = google_bigquery_dataset.raw_dataset.dataset_id
  table_id   = "department_raw"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/raw/department_raw.json") # Path to the JSON schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "raw_table" {
  dataset_id = google_bigquery_dataset.raw_dataset.dataset_id
  table_id   = "employee_raw"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/raw/employee_raw.json") # Path to the JSON schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "raw_table" {
  dataset_id = google_bigquery_dataset.raw_dataset.dataset_id
  table_id   = "employeedepartmenthistory_raw"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/raw/employeedepartmenthistory_raw.json") # Path to the JSON schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "raw_table" {
  dataset_id = google_bigquery_dataset.raw_dataset.dataset_id
  table_id   = "employeepayhistory_raw"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/raw/employeepayhistory_raw.json") # Path to the JSON schema file

  lifecycle {
    prevent_destroy = false
  }
}


# Staging Layer
resource "google_bigquery_dataset" "staging_dataset" {
  dataset_id = "employee_details_staging"
  location   = var.dataset_location

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_bigquery_table" "staging_table" {
  dataset_id = google_bigquery_dataset.staging_dataset.dataset_id
  table_id   = "department_staging"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/staging/department_staging.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "staging_table" {
  dataset_id = google_bigquery_dataset.staging_dataset.dataset_id
  table_id   = "employee_staging"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/staging/employee_staging.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "staging_table" {
  dataset_id = google_bigquery_dataset.staging_dataset.dataset_id
  table_id   = "employeedepartmenthistory_staging"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/staging/employeedepartmenthistory_staging.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "staging_table" {
  dataset_id = google_bigquery_dataset.staging_dataset.dataset_id
  table_id   = "employeepayhistory_staging"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/staging/employeepayhistory_staging.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}


# Curation Layer
resource "google_bigquery_dataset" "curation_dataset" {
  dataset_id = "employee_details_curation"
  location   = var.dataset_location

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_bigquery_table" "curation_table" {
  dataset_id = google_bigquery_dataset.curation_dataset.dataset_id
  table_id   = "department_curation"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/curation/department_curation.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "curation_table" {
  dataset_id = google_bigquery_dataset.curation_dataset.dataset_id
  table_id   = "employee_curation"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/curation/employee_curation.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "curation_table" {
  dataset_id = google_bigquery_dataset.curation_dataset.dataset_id
  table_id   = "employeedepartmenthistory_curation"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/curation/employeedepartmenthistory_curation.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "curation_table" {
  dataset_id = google_bigquery_dataset.curation_dataset.dataset_id
  table_id   = "employeepayhistory_curation"
  schema     = file("C:/Users/adith/Documents/GitHub/My_Project_Resources/curation/employeepayhistory_curation.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}