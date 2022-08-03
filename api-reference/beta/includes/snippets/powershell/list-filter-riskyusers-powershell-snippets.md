---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

Get-MgRiskyUser -Filter "riskLevel eq microsoft.graph.riskLevel'medium'"  -OutFile $outFileId

```