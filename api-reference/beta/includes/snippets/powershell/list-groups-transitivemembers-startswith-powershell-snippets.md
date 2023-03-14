---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

Get-MgGroupTransitiveMember -GroupId $groupId -DirectoryObjectId $directoryObjectId -CountVariable CountVar -Sort "displayName" -Filter "startswith(displayName, 'a')" -ConsistencyLevel eventual 


```