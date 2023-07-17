---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	description = "Add user to selected groups"
	displayName = "Update marketing day 1 add users to Group set up"
}

Update-MgIdentityGovernanceLifecycleWorkflowTask -WorkflowId $workflowId -TaskId $taskId -BodyParameter $params

```