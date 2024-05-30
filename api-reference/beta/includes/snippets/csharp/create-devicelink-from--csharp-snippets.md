---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new DeviceLink
{
	Name = "device link 1",
	IpAddress = "24.123.22.168",
	DeviceVendor = DeviceVendor.BarracudaNetworks,
	BandwidthCapacityInMbps = BandwidthCapacityInMbps.Mbps250,
	BgpConfiguration = new BgpConfiguration
	{
		LocalIpAddress = "1.128.24.22",
		PeerIpAddress = "1.128.24.28",
		Asn = 4,
	},
	RedundancyConfiguration = new RedundancyConfiguration
	{
		ZoneLocalIpAddress = "1.128.23.20",
		RedundancyTier = RedundancyTier.ZoneRedundancy,
	},
	TunnelConfiguration = new TunnelConfiguration
	{
		OdataType = "microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default",
		PreSharedKey = "/microsoft/keyVault/placeholder",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.Connectivity.Branches["{branchSite-id}"].DeviceLinks.PostAsync(requestBody);


```