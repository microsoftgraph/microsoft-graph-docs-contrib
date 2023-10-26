---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = WorkflowsRequestBuilder.WorkflowsRequestBuilderGetQueryParameters(
		filter = "category eq 'leaver'",
		select = ["id","category","displayName","isEnabled","isSchedulingEnabled"],
)

request_configuration = WorkflowsRequestBuilder.WorkflowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.get(request_configuration = request_configuration)


```