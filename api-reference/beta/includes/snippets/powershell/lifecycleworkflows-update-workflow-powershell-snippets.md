---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	Description = "Configure new hire tasks for onboarding employees on their first day"
	DisplayName = "Australia Onboard new hire employee"
	IsEnabled = $true
	IsSchedulingEnabled = $false
}

Update-MgIdentityGovernanceLifecycleWorkflow -WorkflowId $workflowId -BodyParameter $params

```