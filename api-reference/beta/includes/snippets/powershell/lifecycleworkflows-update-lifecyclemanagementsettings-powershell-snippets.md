---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	"@odata.context" = "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity"
	workflowScheduleIntervalInHours = 3
	emailSettings = @{
		senderDomain = "ContosoIndustries.net"
		useCompanyBranding = $true
	}
}

Update-MgIdentityGovernanceLifecycleWorkflowSetting -BodyParameter $params

```