resource "local_file" "pet" {
  filename = "/home/rohith/MyLab/terraform-learn/KodeKloud/pets.txt"
  content  = "We love pets!"
}
