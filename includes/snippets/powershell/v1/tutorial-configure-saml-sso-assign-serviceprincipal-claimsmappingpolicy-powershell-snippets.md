---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/92037c7a-a875-49a0-814e-8ec30f880e2e"
}

New-MgServicePrincipalClaimMappingPolicyByRef -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```