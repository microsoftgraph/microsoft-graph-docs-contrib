---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ResumePostRequestBody()
data = CustomTaskExtensionCallbackData()
data.operationstatus(CustomTaskExtensionOperationStatus.Completed('customtaskextensionoperationstatus.completed'))


request_body.data = data
request_body.source = 'sample'

request_body.type = 'lifecycleEvent'




await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').tasks.by_task_id('task-id').task_processing_results.by_task_processing_result_id('taskProcessingResult-id').microsoft_graph_identity_governance_resume.post(request_body = request_body)


```