---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	displayName = "Test Printer"
	manufacturer = "Test Printer Manufacturer"
	model = "Test Printer Model"
	physicalDeviceId = $null
	hasPhysicalDevice = $false
	certificateSigningRequest = @{
		content = '{content}'
		transportKey = '{sampleTransportKey}'
	}
	connectorId = $null
}

New-MgPrintPrinter -BodyParameter $params

```