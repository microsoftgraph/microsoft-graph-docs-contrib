---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

Get-MgBetaGroupTransitiveMemberAsUser -GroupId $groupId -CountVariable CountVar -Sort "displayName" -Search '"displayName:tier"' -Property "displayName,id" -ConsistencyLevel eventual 


```