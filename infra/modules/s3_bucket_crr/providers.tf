provider "aws" {
  region  = "us-east-1"
}

provider "aws" {
  alias   = "replica"
  region  = "us-west-2" # Ajuste para a região correta da réplica
}