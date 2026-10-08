---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcAgentPool
{
	OdataType = "#microsoft.graph.cloudPcAgentPool",
	DisplayName = "Contoso Development Pool",
	CloudPcConfiguration = new CloudPcConfiguration
	{
		ImageId = "microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc-m365",
		ImageType = CloudPcProvisioningPolicyImageType.Gallery,
		OsLocale = "en-US",
	},
	NetworkConfiguration = new CloudPcMicrosoftHostedNetworkConfiguration
	{
		OdataType = "#microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration",
		GeographicLocationType = CloudPcGeographicLocationType.UsWest,
		RegionGroups = new List<CloudPcRegionGroupConfiguration>
		{
			new CloudPcRegionGroupConfiguration
			{
				RegionGroup = CloudPcRegionGroup.UsWest,
				Regions = new List<string>
				{
					"westus2",
					"westus3",
				},
			},
		},
	},
	BillingConfiguration = new CloudPcAgentPoolBillingConfiguration
	{
		BillingType = CloudPcAgentPoolBillingType.PayAsYouGo,
		BillingPlanId = "00000000-0000-0000-0000-000000000001",
	},
	ScalingPolicy = new CloudPcAgentPoolScalingPolicy
	{
		MinimumCount = 2,
		MaximumCount = 10,
	},
	Capabilities = new CloudPcAgentPoolCapabilityConfiguration
	{
		OdataType = "#microsoft.graph.cloudPcAgentPoolCapabilityConfiguration",
		EnableSingleSignOn = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.CloudPcPools.PostAsync(requestBody);


```