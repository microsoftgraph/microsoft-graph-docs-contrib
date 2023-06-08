---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ApplicationTemplatesRequestBuilder.ApplicationTemplatesRequestBuilderGetQueryParameters(
		filter = "displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'",
)

request_configuration = ApplicationTemplatesRequestBuilder.ApplicationTemplatesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.application_templates.get(request_configuration = request_configuration)


```