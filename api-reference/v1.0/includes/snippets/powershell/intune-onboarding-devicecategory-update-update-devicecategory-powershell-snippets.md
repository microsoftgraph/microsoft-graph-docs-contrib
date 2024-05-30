---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.deviceCategory"
	displayName = "Display Name value"
	description = "Description value"
}

Update-MgDeviceManagementDeviceCategory -DeviceCategoryId $deviceCategoryId -BodyParameter $params

```