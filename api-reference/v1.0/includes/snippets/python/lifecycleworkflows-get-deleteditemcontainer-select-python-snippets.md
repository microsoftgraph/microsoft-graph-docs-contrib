---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = WorkflowItemRequestBuilder.WorkflowItemRequestBuilderGetQueryParameters(
		select = ["id","category","displayName","description","version","executionConditions"],
)

request_configuration = WorkflowItemRequestBuilder.WorkflowItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.deleted_items.workflows.by_workflow_id('workflow-id').get(request_configuration = request_configuration)


```