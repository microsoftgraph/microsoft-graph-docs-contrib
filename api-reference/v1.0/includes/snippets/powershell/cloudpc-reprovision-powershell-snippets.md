---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	userAccountType = "administrator"
	osVersion = "windows10"
}

Invoke-MgReprovisionDeviceManagementVirtualEndpointCloudPc -CloudPCId $cloudPCId -BodyParameter $params

```