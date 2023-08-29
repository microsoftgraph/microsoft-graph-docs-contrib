---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

Get-MgBetaGroupMemberOfAsGroup -GroupId $groupId -CountVariable CountVar -Sort "displayName" -Filter "startswith(displayName, 'A')" -ConsistencyLevel eventual 


```