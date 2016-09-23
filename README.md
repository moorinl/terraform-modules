# Terraform modules

Common used Terraform modules

## Modules

* [Static site]

### Static site

Creates a S3 bucket with public read access and a website redirect S3 bucket
for non-www support.

```
module "my_static_site" {
	source = "github.com/moorinteractive/terraform-modules//static_site"
	domain = "example.com"
}
```

Already have existing S3 buckest? No problem, import them with:

```
terraform import module.<name>.aws_s3_bucket.public <domain>
terraform import module.<name>.aws_s3_bucket.redirect www.<domain>
```

[Static site]: #static-site
