---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	syncType = "deltaSync"
}

Sync-MgDeviceManagementExchangeConnector -DeviceManagementExchangeConnectorId $deviceManagementExchangeConnectorId -BodyParameter $params

```