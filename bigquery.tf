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
  table_id   = "Tabela de alunos"
  deletion_protection = false

  labels = {
    env = "terraform"
  }

  schema = <<EOF
[
  {
    "name": "ID",
    "type": "INTEGER",
    "mode": "NULLABLE",
    "description": "ID do aluno"
  },
  {
    "name": "Nome",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Nome do Aluno"
  },
  {
    "name": "Telefone",
    "type": "INTEGER",
    "mode": "NULLABLE",
    "description": "Telefone do aluno"
  },
  {
    "name": "Matricula",
    "type": "INTEGER",
    "mode": "NULLABLE",
    "description": "Número da matricula do aluno"
  },
  {
    "name": "Status",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Se o aluno está ativado ou não"
  }
]
EOF

}
