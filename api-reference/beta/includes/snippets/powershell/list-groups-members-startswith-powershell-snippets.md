---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

Get-MgBetaGroupMember -GroupId $groupId -CountVariable CountVar -Filter "startswith(displayName, 'a')" -ConsistencyLevel eventual 


```