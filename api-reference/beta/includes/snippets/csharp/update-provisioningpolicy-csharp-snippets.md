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
	OnPremisesConnectionId = "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
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
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].PatchAsync(requestBody);


```