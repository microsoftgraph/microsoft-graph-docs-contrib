---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identitygovernance.lifecycleworkflows.workflows.item.tasks.item.taskprocessingresults.item.microsoft_graph_identity_governance_resume.resume_post_request_body import ResumePostRequestBody
from msgraph.generated.models.custom_task_extension_callback_data import CustomTaskExtensionCallbackData

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