---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ApplicationRequestBuilder.ApplicationRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","requiredResourceAccess"],
)

request_configuration = ApplicationRequestBuilder.ApplicationRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.applications.by_application_id('application-id').get(request_configuration = request_configuration)


```