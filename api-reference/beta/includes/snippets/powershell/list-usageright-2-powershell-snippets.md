---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

Get-MgDeviceUsageRights -DeviceId $deviceId -Filter "state in ('active', 'suspended') and serviceIdentifier in ('ABCD')" 

```