---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.certificate_based_auth_configuration import CertificateBasedAuthConfiguration
from msgraph.generated.models.certificate_authority import CertificateAuthority

graph_client = GraphServiceClient(credentials, scopes)

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