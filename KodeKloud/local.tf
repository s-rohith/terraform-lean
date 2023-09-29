resource "local_file" "pet" {
  filename        = "/home/rohith/MyLab/terraform-learn/KodeKloud/pets.txt"
  content         = "We love pets!"
  file_permission = "0644"
}

resource "local_sensitive_file" "fruits" {
  filename = "/home/rohith/MyLab/terraform-learn/KodeKloud/friuts.txt"
  content  = "Fruits are good for health"
}
