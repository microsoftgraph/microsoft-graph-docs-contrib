---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcProvisioningPolicy"
	displayName = "HR provisioning policy"
	description = "Provisioning policy for India HR employees"
	microsoftManagedDesktop = @{
		managedType = "starterManaged"
		profile = $null
	}
	autopatch = @{
		autopatchGroupId = "91197a0b-3a74-408d-ba88-bce3fdc4e5eb"
	}
}

Update-MgDeviceManagementVirtualEndpointProvisioningPolicy -CloudPcProvisioningPolicyId $cloudPcProvisioningPolicyId -BodyParameter $params

```