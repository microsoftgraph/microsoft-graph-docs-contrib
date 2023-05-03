---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	userAccountType = "administrator"
	osVersion = "windows10"
}

Invoke-MgReprovisionDeviceManagementVirtualEndpointCloudPc -CloudPCId $cloudPCId -BodyParameter $params

```