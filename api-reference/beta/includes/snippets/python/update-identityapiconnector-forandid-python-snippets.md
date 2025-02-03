---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.identity_api_connector import IdentityApiConnector
from msgraph_beta.generated.models.basic_authentication import BasicAuthentication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityApiConnector(
	display_name = "New Test API",
	target_url = "https://otherapi.com/api/endpoint",
	authentication_configuration = BasicAuthentication(
		odata_type = "microsoft.graph.basicAuthentication",
		username = "<NEW_USERNAME>",
		password = "<NEW_PASSWORD>",
	),
)

result = await graph_client.identity.api_connectors.by_identity_api_connector_id('identityApiConnector-id').patch(request_body)


```