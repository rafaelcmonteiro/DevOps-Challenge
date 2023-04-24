resource "null_resource" "db_setup" {
  provisioner "local-exec" {
		interpreter = ["bash", "-c"]
		# ...
	}
	# ...
}