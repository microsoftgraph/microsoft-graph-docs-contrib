---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = ConditionalAccessTemplateRequestBuilder.ConditionalAccessTemplateRequestBuilderGetQueryParameters(
		select = ["details"],
)

request_configuration = ConditionalAccessTemplateRequestBuilder.ConditionalAccessTemplateRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.templates.by_template_id('conditionalAccessTemplate-id').get(request_configuration = request_configuration)


```