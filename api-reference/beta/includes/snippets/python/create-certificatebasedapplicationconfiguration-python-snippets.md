---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.certificate_based_application_configuration import CertificateBasedApplicationConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CertificateBasedApplicationConfiguration(
	display_name = "Tenant Trusted Certificate Chain of Trust for Application Configuration",
	description = "The Trusted Certificate Chain of Trust containing a certificate chain used by the Tenant app policy, to only allow application certificates from this issuer.",
	additional_data = {
			"trusted_certificate_authorities " : [
				{
						"is_root_authority" : True,
						"certificate" : "MIIHMDCCBRigAwIBAgITWgAAmdzMYKZPslw+twABAACZ",
				},
			],
	}
)

result = await graph_client.directory.certificate_authorities.certificate_based_application_configurations.post(request_body)


```