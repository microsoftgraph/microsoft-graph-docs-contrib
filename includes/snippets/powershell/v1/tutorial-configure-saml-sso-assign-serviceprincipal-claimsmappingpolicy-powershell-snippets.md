---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/a4b35718-fd5e-4ca8-8248-a3c9934b1b78"
}

New-MgServicePrincipalClaimMappingPolicyByRef -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```