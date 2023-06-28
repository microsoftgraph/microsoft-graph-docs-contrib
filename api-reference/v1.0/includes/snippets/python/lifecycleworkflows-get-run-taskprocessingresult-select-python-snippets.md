---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UserProcessingResultsRequestBuilder.UserProcessingResultsRequestBuilderGetQueryParameters(
		select = ["id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","subject"],
)

request_configuration = UserProcessingResultsRequestBuilder.UserProcessingResultsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').runs.by_run_id('run-id').user_processing_results.get(request_configuration = request_configuration)


```