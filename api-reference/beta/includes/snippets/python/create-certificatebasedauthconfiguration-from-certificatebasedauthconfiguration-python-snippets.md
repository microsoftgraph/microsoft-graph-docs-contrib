---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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