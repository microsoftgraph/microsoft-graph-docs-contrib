---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.certificate_based_auth_configuration import CertificateBasedAuthConfiguration
from msgraph_beta.generated.models.certificate_authority import CertificateAuthority
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CertificateBasedAuthConfiguration(
	certificate_authorities = [
		CertificateAuthority(
			is_root_authority = True,
			certificate = base64.urlsafe_b64decode("Binary"),
		),
	],
)

result = await graph_client.organization.by_organization_id('organization-id').certificate_based_auth_configuration.post(request_body)


```