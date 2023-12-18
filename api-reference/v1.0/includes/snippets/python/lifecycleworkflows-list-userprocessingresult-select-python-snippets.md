---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserProcessingResultsRequestBuilder.UserProcessingResultsRequestBuilderGetQueryParameters(
		select = ["id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","workflowExecutionType","subject"],
)

request_configuration = UserProcessingResultsRequestBuilder.UserProcessingResultsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').user_processing_results.get(request_configuration = request_configuration)


```