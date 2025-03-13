---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/directoryObjects/{id}"
}

New-MgBetaServicePrincipalOwnerByRef -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```