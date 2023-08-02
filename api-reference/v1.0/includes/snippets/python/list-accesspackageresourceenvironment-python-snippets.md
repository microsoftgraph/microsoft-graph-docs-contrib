---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ResourceEnvironmentsRequestBuilder.ResourceEnvironmentsRequestBuilderGetQueryParameters(
		filter = "originSystem eq 'SharePointOnline'",
)

request_configuration = ResourceEnvironmentsRequestBuilder.ResourceEnvironmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.entitlement_management.resource_environments.get(request_configuration = request_configuration)


```