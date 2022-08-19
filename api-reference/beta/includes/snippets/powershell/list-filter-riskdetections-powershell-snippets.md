---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

Get-MgRiskDetection -Filter "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'"  -OutFile $outFileId

```