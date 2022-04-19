---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcProvisioningPolicy"
	DisplayName = "HR provisioning policy"
	Description = "Provisioning policy for India HR employees"
	OnPremisesConnectionId = "4e47d0f6-6f77-44f0-8893-c0fe1701ffff"
	ImageId = "Image ID value"
	ImageDisplayName = "Image Display Name value"
	ImageType = "custom"
	WindowsSettings = @{
		Language = "en-US"
	}
}

Update-MgDeviceManagementVirtualEndpointProvisioningPolicy -CloudPcProvisioningPolicyId $cloudPcProvisioningPolicyId -BodyParameter $params

```