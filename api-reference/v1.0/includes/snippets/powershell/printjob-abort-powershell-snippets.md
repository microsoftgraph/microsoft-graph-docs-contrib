---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	reason = "String"
}

Invoke-MgAbortPrintPrinterJob -PrinterId $printerId -PrintJobId $printJobId -BodyParameter $params

```