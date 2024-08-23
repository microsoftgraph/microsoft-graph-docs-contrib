---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	preferredTokenSigningKeyThumbprint = "5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A"
}

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```