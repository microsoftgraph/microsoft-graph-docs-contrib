---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.type" = "#microsoft.graph.remoteDesktopSecurityConfiguration"
	isRemoteDesktopProtocolEnabled = $true
}

Update-MgServicePrincipalRemoteDesktopSecurityConfiguration -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```