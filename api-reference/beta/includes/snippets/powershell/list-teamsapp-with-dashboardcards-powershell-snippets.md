---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

Get-MgBetaAppCatalogTeamApp -ExpandProperty "appDefinitions(`$expand=dashboardCards)" -Filter "appDefinitions/any(a:a/dashboardCards/`$count ne 0)" 

```