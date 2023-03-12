

//terraform postgres database code

provider "aws" {
  region = "us-west-1"
}


resource "aws_db_instance" "dev" {
  engine                    = "postgres"
  allocated_storage         = 10
  instance_class            = "db.t3.micro"
  name                      = "dev_database"
  username                  = "sa"
  password                  = "adminpw123"
  skip_final_snapshot       = true
  publicly_accessible       = true
  port                      = 5432
  engine_version           = "14.6"
}
