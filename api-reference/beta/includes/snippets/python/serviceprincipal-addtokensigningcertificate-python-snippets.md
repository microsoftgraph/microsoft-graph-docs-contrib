---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.add_token_signing_certificate_post_request_body import AddTokenSigningCertificatePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddTokenSigningCertificatePostRequestBody(
	display_name = "CN=customDisplayName",
	end_date_time = "2024-01-25T00:00:00Z",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').add_token_signing_certificate.post(request_body)


```