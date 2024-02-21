---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.identity_provider import IdentityProvider

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityProvider(
	odata_type = "microsoft.graph.identityProvider",
	name = "Login with Amazon",
	type = "Amazon",
	client_id = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	client_secret = "000000000000",
)

result = await graph_client.identity_providers.post(request_body)


```