---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Administration

Get-MgBetaDeviceManagementVirtualEndpointCloudPc -CloudPCId $cloudPCId -Customfilter "contains(tolower(managedDeviceName), 'a') or contains(tolower(imageDisplayName), 'a') or contains(tolower(userPrincipalName), 'a')" 

```