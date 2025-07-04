---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Reports

Get-MgBetaReportHealthMonitoringAlert -AlertId $alertId -ExpandProperty "enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling" -Property "alertType, createdDateTime, enrichment'" 

```