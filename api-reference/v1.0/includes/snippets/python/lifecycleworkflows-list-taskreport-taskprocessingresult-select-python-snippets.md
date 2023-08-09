---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TaskProcessingResultsRequestBuilder.TaskProcessingResultsRequestBuilderGetQueryParameters(
		select = ["id","failureReason","processingStatus","subject","task"],
)

request_configuration = TaskProcessingResultsRequestBuilder.TaskProcessingResultsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').task_reports.by_task_report_id('taskReport-id').task_processing_results.get(request_configuration = request_configuration)


```