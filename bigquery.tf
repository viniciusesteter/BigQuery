resource "google_bigquery_dataset" "default" {
  dataset_id    = "Alunos"
  friendly_name = "Tabela cadastro aluno"
  description   = "Usuário de uma tabela no BigQuery com Terraform"
  location      = "EU"

  labels = {
    env = "terraform"
  }
}

resource "google_bigquery_table" "table" {
  dataset_id = google_bigquery_dataset.default.dataset_id
  table_id   = "Tabela"
  deletion_protection = false
  schema = file("./table_schema.json")
  labels = {
    env = "terraform"
  }

}
