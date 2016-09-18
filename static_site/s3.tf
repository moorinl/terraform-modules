resource "aws_s3_bucket" "redirect" {
	bucket = "${var.domain}"
	acl = "public-read"

	website {
		redirect_all_requests_to = "www.${var.domain}"
	}
}


resource "aws_s3_bucket" "public" {
	bucket = "www.${var.domain}"
	acl = "public-read"

	website {
		index_document = "index.html"
		error_document = "error.html"
	}
}
