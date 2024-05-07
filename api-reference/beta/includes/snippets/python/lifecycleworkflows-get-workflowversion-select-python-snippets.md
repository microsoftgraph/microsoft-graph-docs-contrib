---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.lifecycle_workflows.workflows.item.versions.{workflow_version-version_number}.workflow_version_item_request_builder import WorkflowVersionItemRequestBuilder

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