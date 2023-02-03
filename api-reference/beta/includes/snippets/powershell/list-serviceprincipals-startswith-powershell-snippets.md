---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

Get-MgServicePrincipal -Filter "startswith(displayName, 'a')" -CountVariable CountVar -Top 1 -Sort "displayName" -ConsistencyLevel eventual 


```