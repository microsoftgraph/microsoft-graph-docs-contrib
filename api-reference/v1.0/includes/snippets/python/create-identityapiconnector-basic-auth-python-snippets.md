---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_api_connector import IdentityApiConnector
from msgraph.generated.models.basic_authentication import BasicAuthentication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityApiConnector(
	display_name = "Test API",
	target_url = "https://someapi.com/api",
	authentication_configuration = BasicAuthentication(
		odata_type = "#microsoft.graph.basicAuthentication",
		username = "MyUsername",
		password = "MyPassword",
	),
)

result = await graph_client.identity.api_connectors.post(request_body)


```