---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ConditionalAccessTemplateRequestBuilder.ConditionalAccessTemplateRequestBuilderGetQueryParameters(
		select = ["details"],
)

request_configuration = ConditionalAccessTemplateRequestBuilder.ConditionalAccessTemplateRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity.conditional_access.templates.by_template_id('conditionalAccessTemplate-id').get(request_configuration = request_configuration)


```