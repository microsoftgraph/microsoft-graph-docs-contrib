---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	signInAudience = "AzureADMultipleOrgs"
	signInAudienceRestrictions = @{
		"@odata.type" = "#microsoft.graph.allowedTenantsAudience"
		isHomeTenantAllowed = $true
		allowedTenantIds = @(
		"818ce016-78c2-457c-91d7-c02c2faaa5fe"
	"c62670b0-53a1-4a38-b26c-4093cbaa510a"
)
}
}

Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```