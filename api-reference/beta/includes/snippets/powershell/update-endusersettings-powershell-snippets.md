---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	"@odata.type" = "#microsoft.graph.endUserSettings"
	relatedPeopleInsightLevel = "countAndNames"
	showApproverDetailsToMembers = $true
}

Set-MgBetaEntitlementManagementControlConfiguration -ControlConfigurationId $controlConfigurationId -BodyParameter $params

```