---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.lifecycle_workflows.workflows.item.task_reports.task_reports_request_builder import TaskReportsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TaskReportsRequestBuilder.TaskReportsRequestBuilderGetQueryParameters(
		select = ["id","failedUsersCount","processingStatus","successfulUsersCount","totalUsersCount","unprocessedUsersCount","taskDefinition","taskProcessingResults"],
)

request_configuration = TaskReportsRequestBuilder.TaskReportsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').task_reports.get(request_configuration = request_configuration)


```