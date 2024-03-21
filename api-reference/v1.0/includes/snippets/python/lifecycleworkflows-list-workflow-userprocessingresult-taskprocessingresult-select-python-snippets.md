---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.lifecycleWorkflows.workflows.item.userProcessingResults.item.taskProcessingResults.task_processing_results_request_builder import TaskProcessingResultsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TaskProcessingResultsRequestBuilder.TaskProcessingResultsRequestBuilderGetQueryParameters(
		select = ["id","processingStatus","failureReason","subject","task"],
)

request_configuration = TaskProcessingResultsRequestBuilder.TaskProcessingResultsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').user_processing_results.by_user_processing_result_id('userProcessingResult-id').task_processing_results.get(request_configuration = request_configuration)


```