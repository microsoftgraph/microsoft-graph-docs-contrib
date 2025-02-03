---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.serviceprincipals.item.add_token_signing_certificate.add_token_signing_certificate_post_request_body import AddTokenSigningCertificatePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddTokenSigningCertificatePostRequestBody(
	display_name = "CN=customDisplayName",
	end_date_time = "2024-01-25T00:00:00Z",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').add_token_signing_certificate.post(request_body)


```