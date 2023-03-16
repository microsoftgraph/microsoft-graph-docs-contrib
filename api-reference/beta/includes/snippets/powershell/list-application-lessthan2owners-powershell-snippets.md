---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

Get-MgApplication -Filter "owners/`$count eq 0 or owners/`$count eq 1" -CountVariable CountVar -Property "id,displayName" -ConsistencyLevel eventual 


```