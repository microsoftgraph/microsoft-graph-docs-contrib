---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceLink(
	name = "device link 1",
	ip_address = "24.123.22.168",
	device_vendor = DeviceVendor.BarracudaNetworks,
	bandwidth_capacity_in_mbps = BandwidthCapacityInMbps.Mbps250,
	bgp_configuration = BgpConfiguration(
		local_ip_address = "1.128.24.22",
		peer_ip_address = "1.128.24.28",
		asn = 4,
	),
	redundancy_configuration = RedundancyConfiguration(
		zone_local_ip_address = "1.128.23.20",
		redundancy_tier = RedundancyTier.ZoneRedundancy,
	),
	tunnel_configuration = TunnelConfiguration(
		odata_type = "microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default",
		pre_shared_key = "/microsoft/keyVault/placeholder",
	),
)

result = await graph_client.network_access.connectivity.branches.by_branch_site_id('branchSite-id').device_links.post(request_body)


```