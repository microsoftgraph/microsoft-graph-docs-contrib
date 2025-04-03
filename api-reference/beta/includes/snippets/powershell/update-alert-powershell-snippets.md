---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Reports

$params = @{
	state = "resolved"
}

Update-MgBetaReportHealthMonitoringAlert -AlertId $alertId -BodyParameter $params

```