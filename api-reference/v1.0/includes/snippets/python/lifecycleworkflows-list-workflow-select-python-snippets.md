---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = WorkflowsRequestBuilder.WorkflowsRequestBuilderGetQueryParameters(
		filter = "category eq 'leaver'",
		select = ["id","category","displayName","isEnabled","isSchedulingEnabled"],
)

request_configuration = WorkflowsRequestBuilder.WorkflowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.lifecycle_workflows.workflows.get(request_configuration = request_configuration)


```