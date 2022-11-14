---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	IsEnabled = $true
	IsSchedulingEnabled = $true
}

Update-MgIdentityGovernanceLifecycleWorkflow -WorkflowId $workflowId -BodyParameter $params

```