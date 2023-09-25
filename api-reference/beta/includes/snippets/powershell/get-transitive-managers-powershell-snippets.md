---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

# A UPN can also be used as -UserId.
Get-MgBetaUser -UserId $userId -ExpandProperty "manager(`$levels=max;`$select=id,displayName)" -Property "id,displayName" -ConsistencyLevel eventual 


```