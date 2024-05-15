---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.lifecycle_workflows.workflows.item.runs.runs_request_builder import RunsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RunsRequestBuilder.RunsRequestBuilderGetQueryParameters(
		select = ["id","failedTasksCount","failedUsersCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","totalUsersCount","id"],
)

request_configuration = RunsRequestBuilder.RunsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').runs.get(request_configuration = request_configuration)


```