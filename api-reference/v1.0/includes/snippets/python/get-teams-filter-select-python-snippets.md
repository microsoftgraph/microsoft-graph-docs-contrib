---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsRequestBuilder.TeamsRequestBuilderGetQueryParameters(
		filter = "displayName eq 'A Contoso Team'",
		select = ["id","description"],
)

request_configuration = TeamsRequestBuilder.TeamsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.get(request_configuration = request_configuration)


```