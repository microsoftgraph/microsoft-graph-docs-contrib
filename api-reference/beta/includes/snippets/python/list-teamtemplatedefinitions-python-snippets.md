---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TeamTemplatesRequestBuilder.TeamTemplatesRequestBuilderGetQueryParameters(
		expand = ["definitions"],
		filter = "definitions/any(a:a/languageTag eq 'en-US')",
)

request_configuration = TeamTemplatesRequestBuilder.TeamTemplatesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.teamwork.team_templates.get(request_configuration = request_configuration)


```