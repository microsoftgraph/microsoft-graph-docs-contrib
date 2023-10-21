---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	description = "Add user to selected groups"
	displayName = "Update marketing day 1 add users to Group set up"
}

Update-MgBetaIdentityGovernanceLifecycleWorkflowTask -WorkflowId $workflowId -TaskId $taskId -BodyParameter $params

```