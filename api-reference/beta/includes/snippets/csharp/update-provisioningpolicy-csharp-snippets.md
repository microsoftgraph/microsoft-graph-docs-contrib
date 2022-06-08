---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy
{
	DisplayName = "HR provisioning policy",
	Description = "Provisioning policy for India HR employees",
	OnPremisesConnectionId = "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
	ImageId = "Image ID value",
	ImageDisplayName = "Image Display Name value",
	ImageType = CloudPcProvisioningPolicyImageType.Custom,
	WindowsSettings = new CloudPcWindowsSettings
	{
		Language = "en-US"
	}
};

await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"]
	.Request()
	.UpdateAsync(cloudPcProvisioningPolicy);

```