---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	"@odata.type" = "#microsoft.graph.entraIdProtectionRiskyUserApproval"
	id = "EntraIdProtectionRiskyUserApproval"
	isApprovalRequired = $true
	minimumRiskLevel = "medium"
}

Set-MgBetaEntitlementManagementControlConfiguration -ControlConfigurationId $controlConfigurationId -BodyParameter $params

```