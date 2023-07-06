---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

Get-MgBetaGroupMemberAsUser -GroupId $groupId -CountVariable CountVar -Sort "displayName" -Search '"displayName:Pr"' -Property "displayName,id" -ConsistencyLevel eventual 


```