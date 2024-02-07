---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = TemplatesRequestBuilder.TemplatesRequestBuilderGetQueryParameters(
		select = ["name","description","id","scenarios"],
		filter = "scenarios has 'secureFoundation'",
)

request_configuration = TemplatesRequestBuilder.TemplatesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.templates.get(request_configuration = request_configuration)


```