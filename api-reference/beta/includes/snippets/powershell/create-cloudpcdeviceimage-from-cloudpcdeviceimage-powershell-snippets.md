---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcDeviceImage"
	displayName = "Display Name value"
	osBuildNumber = "OS Build Number value"
	operatingSystem = "Operating System value"
	version = "Version value"
	sourceImageResourceId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage"
}

New-MgDeviceManagementVirtualEndpointDeviceImage -BodyParameter $params

```