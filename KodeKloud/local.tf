resource "local_file" "pet" {
  filename        = var.pet_filename
  content         = var.pet_content
  file_permission = "0644"
}

resource "local_sensitive_file" "fruits" {
  filename = "/home/rohith/MyLab/terraform-learn/KodeKloud/friuts.txt"
  content  = "Fruits are good for health"
}
