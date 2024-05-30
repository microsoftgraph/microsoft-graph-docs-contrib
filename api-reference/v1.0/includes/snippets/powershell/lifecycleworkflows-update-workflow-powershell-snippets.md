---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	description = "Configure new hire tasks for onboarding employees on their first day"
	displayName = "Australia Onboard new hire employee"
	isEnabled = $true
	isSchedulingEnabled = $false
}

Update-MgIdentityGovernanceLifecycleWorkflow -WorkflowId $workflowId -BodyParameter $params

```