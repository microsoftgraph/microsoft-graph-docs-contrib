---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	preferredTokenSigningKeyThumbprint = "A7D3C4626B8A84FDA868CCC67D274D402FFD0A10"
}

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```