---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUser -CountVariable CountVar -Filter "not isof('microsoft.graph.agentUser')" -Property "displayName" 

```