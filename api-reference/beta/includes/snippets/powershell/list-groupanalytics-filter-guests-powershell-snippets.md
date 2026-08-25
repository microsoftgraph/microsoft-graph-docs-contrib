---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Reports

Get-MgBetaReportIdentityAnalyticGroup -Filter "isValidGroup eq true and guestTransitiveUserCount gt 0" -Property "id,displayName,createdDateTime,groupType,transitiveUserCount,guestTransitiveUserCount" -Sort "createdDateTime desc" -Top 10 

```