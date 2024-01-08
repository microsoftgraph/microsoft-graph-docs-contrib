---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	event = "jobStarted"
	"definition@odata.bind" = "https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}"
}

New-MgPrintPrinterTaskTrigger -PrinterId $printerId -BodyParameter $params

```