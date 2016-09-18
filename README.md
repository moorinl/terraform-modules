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
[Static site]: #static-site
