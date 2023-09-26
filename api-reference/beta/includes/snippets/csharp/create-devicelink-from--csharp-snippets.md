---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.DeviceLink
{
	Name = "device link 1",
	IpAddress = "24.123.22.168",
	DeviceVendor = Microsoft.Graph.Beta.Models.Networkaccess.DeviceVendor.BarracudaNetworks,
	BandwidthCapacityInMbps = Microsoft.Graph.Beta.Models.Networkaccess.BandwidthCapacityInMbps.Mbps250,
	BgpConfiguration = new Microsoft.Graph.Beta.Models.Networkaccess.BgpConfiguration
	{
		LocalIpAddress = "1.128.24.22",
		PeerIpAddress = "1.128.24.28",
		Asn = 4,
	},
	RedundancyConfiguration = new Microsoft.Graph.Beta.Models.Networkaccess.RedundancyConfiguration
	{
		ZoneLocalIpAddress = "1.128.23.20",
		RedundancyTier = Microsoft.Graph.Beta.Models.Networkaccess.RedundancyTier.ZoneRedundancy,
	},
	TunnelConfiguration = new Microsoft.Graph.Beta.Models.Networkaccess.TunnelConfiguration
	{
		OdataType = "microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default",
		PreSharedKey = "/microsoft/keyVault/placeholder",
	},
};
var result = await graphClient.NetworkAccess.Connectivity.Branches["{branchSite-id}"].DeviceLinks.PostAsync(requestBody);


```