---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = WorkflowRequestBuilder.WorkflowRequestBuilderGetQueryParameters(
		select = ["id","category","displayName","description","version","executionConditions"],
)

request_configuration = WorkflowRequestBuilder.WorkflowRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.lifecycle_workflows.deleted_items.workflows.by_workflow_id('workflow-id').get(request_configuration = request_configuration)


```