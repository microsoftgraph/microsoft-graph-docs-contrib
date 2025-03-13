---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrollment

$params = @{
	priority = 8
}

Set-MgDeviceManagementDeviceEnrollmentConfigurationPriority -DeviceEnrollmentConfigurationId $deviceEnrollmentConfigurationId -BodyParameter $params

```