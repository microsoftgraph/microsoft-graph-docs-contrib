---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	"@odata.context" = "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity"
	WorkflowScheduleIntervalInHours = 3
}

Update-MgIdentityGovernanceLifecycleWorkflowSetting -BodyParameter $params

```