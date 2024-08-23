---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.type" = "#microsoft.graph.targetDeviceGroup"
	displayName = "Device Group A"
}

Update-MgServicePrincipalRemoteDesktopSecurityConfigurationTargetDeviceGroup -ServicePrincipalId $servicePrincipalId -TargetDeviceGroupId $targetDeviceGroupId -BodyParameter $params

```