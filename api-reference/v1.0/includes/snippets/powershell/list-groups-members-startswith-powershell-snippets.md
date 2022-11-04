---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

Get-MgGroupMember -GroupId $groupId -CountVariable CountVar -Filter "startswith(displayName, 'a')" -ConsistencyLevel eventual 


```