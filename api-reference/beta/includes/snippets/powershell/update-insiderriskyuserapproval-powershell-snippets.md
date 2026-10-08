---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	"@odata.type" = "#microsoft.graph.insiderRiskyUserApproval"
	id = "insiderRiskyUserApproval"
	isApprovalRequired = $true
	minimumRiskLevel = "elevated"
}

Set-MgBetaEntitlementManagementControlConfiguration -ControlConfigurationId $controlConfigurationId -BodyParameter $params

```