---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	signInAudience = "AzureADMyOrg"
	signInAudienceRestrictions = @{
		"@odata.type" = "#microsoft.graph.unrestrictedAudience"
	}
}

Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```