---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.lifecycleWorkflows.workflows.item.runs.item.taskProcessingResults.task_processing_results_request_builder import TaskProcessingResultsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TaskProcessingResultsRequestBuilder.TaskProcessingResultsRequestBuilderGetQueryParameters(
		select = ["id","failureReason","processingStatus","subject"],
)

request_configuration = TaskProcessingResultsRequestBuilder.TaskProcessingResultsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').runs.by_run_id('run-id').task_processing_results.get(request_configuration = request_configuration)


```