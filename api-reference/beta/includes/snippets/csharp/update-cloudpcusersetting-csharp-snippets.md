---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcUserSetting
{
	OdataType = "#microsoft.graph.cloudPcUserSetting",
	DisplayName = "Example",
	SelfServiceEnabled = true,
	RestorePointSetting = new CloudPcRestorePointSetting
	{
		FrequencyInHours = 16,
		FrequencyType = CloudPcRestorePointFrequencyType.SixteenHours,
		UserRestoreEnabled = true,
	},
	CrossRegionDisasterRecoverySetting = new CloudPcCrossRegionDisasterRecoverySetting
	{
		CrossRegionDisasterRecoveryEnabled = false,
		MaintainCrossRegionRestorePointEnabled = true,
		DisasterRecoveryNetworkSetting = new CloudPcDisasterRecoveryNetworkSetting
		{
			AdditionalData = new Dictionary<string, object>
			{
				{
					"regionName" , "westus"
				},
				{
					"regionGroup" , "usEast"
				},
			},
		},
		DisasterRecoveryType = CloudPcDisasterRecoveryType.Premium,
		UserInitiatedDisasterRecoveryAllowed = true,
	},
	ProvisioningSourceType = CloudPcProvisioningSourceType.Image,
	LocalAdminEnabled = false,
	ResetEnabled = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.UserSettings["{cloudPcUserSetting-id}"].PatchAsync(requestBody);


```