## Deploying [Spring PetClinic Sample Application](https://github.com/spring-projects/spring-petclinic) to aws ECS using terraform

* build application Docker image
* create ecr repository
* push image to ecr
* run ecs cluster
* run application on ecs


## Requirements

You need to have following programs installed in your $PATH:

* [terraform 0.12 or newer](https://www.terraform.io/downloads.html)
* bash
* md5sum or md5
* [aws cli v2](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
* running docker server
* set env variable `export DOCKER_BUILDKIT=1` for docker experimental syntax to work

## AWS Credentials
You need to provide AWS credentials as env variables as follows:

$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-east-1"

## Run

$ terraform init
$ terraform plan --out run
$ terraform apply "run"

##View

At the end of terraform apply application url will be shown as output

## References
[Terraform Docs](https://www.terraform.io/docs/)
[terraform-ecr-docker-build-module](https://github.com/onnimonni/terraform-ecr-docker-build-module)
[spring-petclinic](https://github.com/spring-projects/spring-petclinic)
[terraform-ecs-fargate](https://github.com/bradford-hamilton/terraform-ecs-fargate)
