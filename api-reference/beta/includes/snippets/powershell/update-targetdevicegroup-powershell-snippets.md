---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	"@odata.type" = "#microsoft.graph.targetDeviceGroup"
	displayName = "Device Group A"
}

Update-MgBetaServicePrincipalRemoteDesktopSecurityConfigurationTargetDeviceGroup -ServicePrincipalId $servicePrincipalId -TargetDeviceGroupId $targetDeviceGroupId -BodyParameter $params

```