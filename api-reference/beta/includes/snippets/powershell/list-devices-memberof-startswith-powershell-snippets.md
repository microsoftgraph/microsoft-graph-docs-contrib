---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

Get-MgDeviceMemberOf -DeviceId $deviceId -DirectoryObjectId $directoryObjectId -CountVariable CountVar -Sort "displayName" -Filter "startswith(displayName, 'A')" -ConsistencyLevel eventual 


```