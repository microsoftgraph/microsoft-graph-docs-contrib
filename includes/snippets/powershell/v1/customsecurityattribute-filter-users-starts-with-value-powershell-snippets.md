---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -CountVariable CountVar -Property "id,displayName,customSecurityAttributes" -Filter "startsWith(customSecurityAttributes/Marketing/EmployeeId,'GS')" -ConsistencyLevel eventual 


```