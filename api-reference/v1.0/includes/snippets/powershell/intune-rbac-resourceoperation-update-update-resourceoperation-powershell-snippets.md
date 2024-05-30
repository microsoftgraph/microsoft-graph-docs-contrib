---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.resourceOperation"
	resourceName = "Resource Name value"
	actionName = "Action Name value"
	description = "Description value"
}

Update-MgDeviceManagementResourceOperation -ResourceOperationId $resourceOperationId -BodyParameter $params

```