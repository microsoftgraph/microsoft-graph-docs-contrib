---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new RemoteNetwork
{
	Name = "Bellevue branch w/ device link",
	Region = Region.CanadaEast,
	ForwardingProfiles = new List<ForwardingProfile>
	{
		new ForwardingProfile
		{
			Id = "1adaf535-1e31-4e14-983f-2270408162bf",
		},
	},
	DeviceLinks = new List<DeviceLink>
	{
		new DeviceLink
		{
			Name = "CPE1",
			IpAddress = "52.13.21.25",
			BandwidthCapacityInMbps = BandwidthCapacityInMbps.Mbps500,
			DeviceVendor = DeviceVendor.BarracudaNetworks,
			BgpConfiguration = new BgpConfiguration
			{
				LocalIpAddress = "192.168.1.2",
				PeerIpAddress = "10.1.1.2",
				Asn = 65533,
			},
			RedundancyConfiguration = new RedundancyConfiguration
			{
				ZoneLocalIpAddress = null,
				RedundancyTier = RedundancyTier.NoRedundancy,
			},
			TunnelConfiguration = new TunnelConfigurationIKEv2Default
			{
				OdataType = "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
				PreSharedKey = "test123",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.Connectivity.RemoteNetworks.PostAsync(requestBody);


```