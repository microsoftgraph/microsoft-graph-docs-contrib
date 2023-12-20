---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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