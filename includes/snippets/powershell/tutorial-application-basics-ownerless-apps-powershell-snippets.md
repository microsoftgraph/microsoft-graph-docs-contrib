---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

Get-MgApplication -Filter "owners/`$count eq 0" -CountVariable CountVar -ConsistencyLevel eventual 


```