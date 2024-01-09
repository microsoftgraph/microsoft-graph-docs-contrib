---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamTemplatesRequestBuilder.TeamTemplatesRequestBuilderGetQueryParameters(
		expand = ["definitions"],
		filter = "definitions/any(a:a/languageTag eq 'en-US')",
)

request_configuration = TeamTemplatesRequestBuilder.TeamTemplatesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teamwork.team_templates.get(request_configuration = request_configuration)


```