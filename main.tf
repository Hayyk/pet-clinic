# Create ECR repository pet-clinic
resource "aws_ecr_repository" "pet-clinic" {
  name = "pet-clinic"
}

# Build Docker image and push to ECR from folder: ./pet-clinic
module "ecr_docker_build" {
  source = "./docker-build"

  # Absolute path for pet-clinic Dockerfile
  dockerfile_folder = "${path.module}/pet-clinic"

  # Tag for the builded Docker image (Default: latest)
  docker_image_tag = "development"
  
  # The region which we will log into with aws-cli
  aws_region = "${var.aws_region}"

  # ECR repository where created image will be pushed
  ecr_repository_url = "${aws_ecr_repository.pet-clinic.repository_url}"
}
