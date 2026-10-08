---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcProvisioningPolicy
{
	OdataType = "#microsoft.graph.cloudPcProvisioningPolicy",
	DisplayName = "HR provisioning policy",
	Description = "Provisioning policy for India HR employees",
	ImageId = "Image ID value",
	ImageDisplayName = "Image Display Name value",
	ImageType = CloudPcProvisioningPolicyImageType.Custom,
	WindowsSettings = new CloudPcWindowsSettings
	{
		Language = "en-US",
	},
	WindowsSetting = new CloudPcWindowsSetting
	{
		Locale = "en-US",
	},
	MicrosoftManagedDesktop = new MicrosoftManagedDesktop
	{
		ManagedType = MicrosoftManagedDesktopType.StarterManaged,
		Profile = null,
	},
	Autopatch = new CloudPcProvisioningPolicyAutopatch
	{
		AutopatchGroupId = "91197a0b-3a74-408d-ba88-bce3fdc4e5eb",
	},
	AutopilotConfiguration = new CloudPcAutopilotConfiguration
	{
		DevicePreparationProfileId = "59e5d3d2-ec68-4bfe-9693-27975b318990",
		ApplicationTimeoutInMinutes = 30,
		OnFailureDeviceAccessDenied = false,
	},
	UserSettingsPersistenceConfiguration = new CloudPcUserSettingsPersistenceConfiguration
	{
		UserSettingsPersistenceEnabled = false,
		UserSettingsPersistenceStorageSizeCategory = CloudPcUserSettingsPersistenceStorageSizeCategory.FourGB,
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"onPremisesConnectionId" , "4e47d0f6-6f77-44f0-8893-c0fe1701ffff"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].PatchAsync(requestBody);


```