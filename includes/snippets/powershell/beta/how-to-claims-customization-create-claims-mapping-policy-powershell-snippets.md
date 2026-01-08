---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	definition = @(
	'{"ClaimsMappingPolicy":{"Version":1,"IncludeBasicClaimSet":"true","ClaimsSchema":[{"Source":"user","ID":"department","JwtClaimType":"department"}]}}'
)
displayName = "ExtraClaimsTest"
}

New-MgBetaPolicyClaimMappingPolicy -BodyParameter $params

```