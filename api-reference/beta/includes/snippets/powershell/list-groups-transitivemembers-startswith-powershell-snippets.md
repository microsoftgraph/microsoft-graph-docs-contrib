---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

Get-MgBetaGroupTransitiveMemberAsUser -GroupId $groupId -CountVariable CountVar -Sort "displayName" -Filter "startswith(displayName, 'a')" -ConsistencyLevel eventual 


```