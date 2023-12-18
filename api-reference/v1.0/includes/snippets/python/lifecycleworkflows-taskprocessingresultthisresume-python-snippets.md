---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ResumePostRequestBody(
	data = CustomTaskExtensionCallbackData(
		operation_status = CustomTaskExtensionOperationStatus.Completed,
	),
	source = "sample",
	type = "lifecycleEvent",
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').tasks.by_task_id('task-id').task_processing_results.by_task_processing_result_id('taskProcessingResult-id').microsoft_graph_identity_governance_resume.post(request_body)


```