---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	"@odata.type" = "#microsoft.graph.customClaimsPolicy"
	includeBasicClaimSet = "Boolean"
	includeApplicationIdInIssuer = "Boolean"
	audienceOverride = "String"
	claims = @(
		@{
			"@odata.type" = "microsoft.graph.customClaim"
		}
	)
}

Set-MgBetaServicePrincipalClaimPolicy -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```