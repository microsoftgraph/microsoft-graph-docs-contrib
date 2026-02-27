---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

Get-MgBetaApplicationTemplate -Property "id,displayName,riskScore,categories" -Filter "categories/any(c: c eq 'contentSharing')" -Top 2 -Sort "riskScore/total desc" 

```