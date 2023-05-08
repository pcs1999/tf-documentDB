resource "aws_db_subnet_group" "subnet_group" {

  name = "${var.env}-docdb_subnet_group"
  subnet_ids = var.subnet_ids
  tags = merge (local.common_tags, { Name = "${var.env}-docdb_subnet_group" } )

}