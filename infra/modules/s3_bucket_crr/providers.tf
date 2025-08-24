provider "aws" {
  region  = "sa-east-1"
}

provider "aws" {
  alias   = "replica"
  region  = "us-east-1" # Ajuste para a região correta da réplica
}