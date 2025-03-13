---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	"@odata.type" = "#microsoft.graph.remoteDesktopSecurityConfiguration"
	isRemoteDesktopProtocolEnabled = $true
}

Update-MgBetaServicePrincipalRemoteDesktopSecurityConfiguration -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```