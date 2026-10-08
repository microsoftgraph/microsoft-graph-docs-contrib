---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	adDomainPassword = "AdDomainPassword_XXXX"
}

Update-MgDeviceManagementVirtualEndpointOnPremiseConnectionAdDomainPassword -CloudPcOnPremisesConnectionId $cloudPcOnPremisesConnectionId -BodyParameter $params

```