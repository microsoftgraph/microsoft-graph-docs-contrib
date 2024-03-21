---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrollment

$params = @{
	"@odata.type" = "#microsoft.graph.deviceEnrollmentLimitConfiguration"
	displayName = "Display Name value"
	description = "Description value"
	priority = 8
	version = 7
	limit = 
}

New-MgDeviceManagementDeviceEnrollmentConfiguration -BodyParameter $params

```