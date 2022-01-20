---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	DisplayName = "HR provisioning policy"
	Description = "Provisioning policy for India HR employees"
	OnPremisesConnectionId = "4e47d0f6-6f77-44f0-8893-c0fe1701b553"
}

Update-MgDeviceManagementVirtualEndpointProvisioningPolicy -CloudPcProvisioningPolicyId $cloudPcProvisioningPolicyId -BodyParameter $params

```