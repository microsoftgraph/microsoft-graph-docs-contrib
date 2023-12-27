---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = WorkflowVersionItemRequestBuilder.WorkflowVersionItemRequestBuilderGetQueryParameters(
		select = ["category","displayName","versionNumber","executionConditions"],
		expand = ["tasks"],
)

request_configuration = WorkflowVersionItemRequestBuilder.WorkflowVersionItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').versions.by_workflow_version_version_number('workflowVersion-versionNumber').get(request_configuration = request_configuration)


```