---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.apple_managed_identity_provider import AppleManagedIdentityProvider

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppleManagedIdentityProvider(
	odata_type = "microsoft.graph.appleManagedIdentityProvider",
	display_name = "Sign in with Apple",
	developer_id = "UBF8T346G9",
	service_id = "com.microsoft.rts.b2c.test.client",
	key_id = "99P6D879C4",
	certificate_data = "******",
)

result = await graph_client.identity.identity_providers.post(request_body)


```