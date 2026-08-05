---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	"@odata.type" = "#microsoft.graph.endUserSettings"
	relatedPeopleInsightLevel = "countAndNames"
	showApproverDetailsToMembers = $true
}

Set-MgEntitlementManagementControlConfiguration -ControlConfigurationId $controlConfigurationId -BodyParameter $params

```