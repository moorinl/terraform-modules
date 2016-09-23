# Terraform modules

Common used Terraform modules.

## Modules

* [Redirect]
* [Static site]

### Redirect

Creates a public read access S3 bucket with a redirect.

```
module "my_redirect" {
	source = "github.com/moorinteractive/terraform-modules//redirect"
	domain = "www.example.com"
    target = "www.example.io"
}
```

Already have an existing S3 bucket with a redirect? No problem, import it with:

```
terraform import module.<my_redirect>.aws_s3_bucket.redirect <www.example.com>
```

### Static site

Creates a S3 bucket with public read access and a website redirect S3 bucket
for non-www support.

```
module "my_static_site" {
	source = "github.com/moorinteractive/terraform-modules//static_site"
	domain = "example.com"
}
```my_redirect

Already have existing S3 buckets? No problem, import them with:

```
terraform import module.<my_static_site>.aws_s3_bucket.public <example.com>
terraform import module.<my_static_site>.aws_s3_bucket.redirect www.<example.com>
```

[Redirect]: #redirect
[Static site]: #static-site
