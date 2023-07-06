---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

Get-MgGroupMemberAsUser -GroupId $groupId -CountVariable CountVar -Sort "displayName" -Search '"displayName:Pr"' -Property "displayName,id" -ConsistencyLevel eventual 


```