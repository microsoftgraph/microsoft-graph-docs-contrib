---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUser -CountVariable CountVar -Property "id,displayName,customSecurityAttributes" -Filter "customSecurityAttributes/Marketing/AppCountry eq 'Canada'" -ConsistencyLevel eventual 


```