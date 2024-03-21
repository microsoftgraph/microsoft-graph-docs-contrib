---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.identity_api_connector import IdentityApiConnector
from msgraph.generated.models.basic_authentication import BasicAuthentication

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityApiConnector(
	display_name = "Test API",
	target_url = "https://someapi.com/api",
	authentication_configuration = BasicAuthentication(
		odata_type = "#microsoft.graph.basicAuthentication",
		username = "<USERNAME>",
		password = "<PASSWORD>",
	),
)

result = await graph_client.identity.api_connectors.post(request_body)


```