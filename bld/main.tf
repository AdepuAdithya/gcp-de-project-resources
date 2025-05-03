# Raw Dataset
resource "google_bigquery_dataset" "raw_dataset" {
  dataset_id = "Employee_Details_raw"
  location   = var.dataset_location

  lifecycle {
    prevent_destroy = false
  }
}

# Raw Tables
resource "google_bigquery_table" "Department_raw_table" {
  dataset_id = google_bigquery_dataset.raw_dataset.dataset_id
  table_id   = "Department_raw"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/raw/Department_raw.json") # Path to the JSON schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "Employee_raw_table" {
  dataset_id = google_bigquery_dataset.raw_dataset.dataset_id
  table_id   = "Employee_raw"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/raw/Employee_raw.json") # Path to the JSON schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "EmployeeDepartmentHistory_raw_table" {
  dataset_id = google_bigquery_dataset.raw_dataset.dataset_id
  table_id   = "EmployeeDepartmentHistory_raw"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/raw/EmployeeDepartmentHistory_raw.json") # Path to the JSON schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "EmployeePayHistory_raw_table" {
  dataset_id = google_bigquery_dataset.raw_dataset.dataset_id
  table_id   = "EmployeePayHistory_raw"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/raw/EmployeePayHistory_raw.json") # Path to the JSON schema file

  lifecycle {
    prevent_destroy = false
  }
}


# Staging Dataset
resource "google_bigquery_dataset" "staging_dataset" {
  dataset_id = "Employee_Details_stg"
  location   = var.dataset_location

  lifecycle {
    prevent_destroy = false
  }
}

#Staging Tables
resource "google_bigquery_table" "Department_stg_table" {
  dataset_id = google_bigquery_dataset.staging_dataset.dataset_id
  table_id   = "Department_stg"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/staging/Department_stg.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "Employee_stg_table" {
  dataset_id = google_bigquery_dataset.staging_dataset.dataset_id
  table_id   = "Employee_stg"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/staging/Employee_stg.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "EmployeeDepartmentHistory_stg_table" {
  dataset_id = google_bigquery_dataset.staging_dataset.dataset_id
  table_id   = "EmployeeDepartmentHistory_stg"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/staging/EmployeeDepartmentHistory_stg.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}
resource "google_bigquery_table" "EmployeePayHistory_stg_table" {
  dataset_id = google_bigquery_dataset.staging_dataset.dataset_id
  table_id   = "EmployeePayHistory_stg"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/staging/EmployeePayHistory_stg.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}


# Curation Dataset
resource "google_bigquery_dataset" "curation_dataset" {
  dataset_id = "employee_details_cur"
  location   = var.dataset_location

  lifecycle {
    prevent_destroy = false
  }
}

# Curation Table
resource "google_bigquery_table" "curation_table" {
  dataset_id = google_bigquery_dataset.curation_dataset.dataset_id
  table_id   = "EmployeeDepartmentAndPayHistory_cur"
  schema     = file("C:/Users/adith/Documents/GitHub/gcp-de-project-resources/bld/curation/EmployeeDepartmentAndPayHistory_cur.json") # Reusing the same schema file

  lifecycle {
    prevent_destroy = false
  }
}