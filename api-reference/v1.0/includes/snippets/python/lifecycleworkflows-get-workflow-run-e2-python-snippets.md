---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.lifecycle_workflows.workflows.item.runs.item.run_item_request_builder import RunItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RunItemRequestBuilder.RunItemRequestBuilderGetQueryParameters(
		select = ["id","failedTasksCount","failedUsersCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","totalUsersCount"],
)

request_configuration = RunItemRequestBuilder.RunItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').runs.by_run_id('run-id').get(request_configuration = request_configuration)


```