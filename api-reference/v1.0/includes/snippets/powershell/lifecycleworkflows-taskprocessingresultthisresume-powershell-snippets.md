---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	data = @{
		operationStatus = "Completed"
	}
	source = "sample"
	type = "lifecycleEvent"
}

Resume-MgIdentityGovernanceLifecycleWorkflowTaskProcessingResult -WorkflowId $workflowId -TaskId $taskId -TaskProcessingResultId $taskProcessingResultId -BodyParameter $params

```