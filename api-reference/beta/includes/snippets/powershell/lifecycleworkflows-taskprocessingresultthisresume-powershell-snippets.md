---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	data = @{
		operationStatus = "Completed"
	}
	source = "sample"
	type = "lifecycleEvent"
}

Resume-MgBetaIdentityGovernanceLifecycleWorkflowTaskProcessingResult -WorkflowId $workflowId -TaskId $taskId -TaskProcessingResultId $taskProcessingResultId -BodyParameter $params

```