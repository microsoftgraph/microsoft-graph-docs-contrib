---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -Search '"displayName:wa" OR "displayName:ad"' -Orderbydisplayname =  -CountVariable CountVar -ConsistencyLevel eventual 


```