provider "aws" {
    region = "${var.AWS_REGION}"
    profile = "${var.AWS_PROFILE}"
    access_key = "${var.ACCESS_ID}"
    secret_key = "${var.SECRET_ID}"
}
