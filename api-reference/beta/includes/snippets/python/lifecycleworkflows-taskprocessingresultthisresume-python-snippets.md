---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.lifecycleworkflows.workflows.item.tasks.item.taskprocessingresults.item.microsoft_graph_identity_governance_resume.resume_post_request_body import ResumePostRequestBody
from msgraph_beta.generated.models.identity_governance.custom_task_extension_callback_data import CustomTaskExtensionCallbackData
from msgraph_beta.generated.models.custom_task_extension_operation_status import CustomTaskExtensionOperationStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ResumePostRequestBody(
	data = CustomTaskExtensionCallbackData(
		operation_status = CustomTaskExtensionOperationStatus.Completed,
	),
	source = "sample",
	type = "lifecycleEvent",
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').tasks.by_task_id('task-id').task_processing_results.by_task_processing_result_id('taskProcessingResult-id').microsoft_graph_identity_governance_resume.post(request_body)


```