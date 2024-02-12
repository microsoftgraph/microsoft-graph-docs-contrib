---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.lifecycleWorkflows.workflows.item.runs.item.userProcessingResults.user_processing_results_request_builder import UserProcessingResultsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserProcessingResultsRequestBuilder.UserProcessingResultsRequestBuilderGetQueryParameters(
		select = ["id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","subject"],
)

request_configuration = UserProcessingResultsRequestBuilder.UserProcessingResultsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').runs.by_run_id('run-id').user_processing_results.get(request_configuration = request_configuration)


```