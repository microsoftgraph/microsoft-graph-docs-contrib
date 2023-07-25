---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.deviceManagement"
	settings = @{
		"@odata.type" = "microsoft.graph.deviceManagementSettings"
		deviceComplianceCheckinThresholdDays = 4
		isScheduledActionEnabled = $true
		secureByDefault = $true
	}
	intuneAccountId = "cf1549a1-49a1-cf15-a149-15cfa14915cf"
}

Update-MgDeviceManagement -BodyParameter $params

```