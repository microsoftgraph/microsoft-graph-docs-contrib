---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

Get-MgBetaAppCatalogTeamApp -ExpandProperty "appDefinitions(`$expand=bot)" -Filter "appDefinitions/any(a:a/bot ne null)" 

```