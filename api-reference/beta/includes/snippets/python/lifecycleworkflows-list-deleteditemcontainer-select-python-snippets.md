---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.lifecycleWorkflows.deletedItems.workflows.workflows_request_builder import WorkflowsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = WorkflowsRequestBuilder.WorkflowsRequestBuilderGetQueryParameters(
		select = ["id","category","displayName","description","version"],
		filter = "category eq 'leaver'",
)

request_configuration = WorkflowsRequestBuilder.WorkflowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.deleted_items.workflows.get(request_configuration = request_configuration)


```