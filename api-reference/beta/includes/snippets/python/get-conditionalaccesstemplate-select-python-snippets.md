---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ConditionalAccessTemplateItemRequestBuilder.ConditionalAccessTemplateItemRequestBuilderGetQueryParameters(
		select = ["details"],
)

request_configuration = ConditionalAccessTemplateItemRequestBuilder.ConditionalAccessTemplateItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.templates.by_conditional_access_template_id('conditionalAccessTemplate-id').get(request_configuration = request_configuration)


```