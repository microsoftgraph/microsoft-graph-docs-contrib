---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.device_link import DeviceLink
from msgraph_beta.generated.models.device_vendor import DeviceVendor
from msgraph_beta.generated.models.bandwidth_capacity_in_mbps import BandwidthCapacityInMbps
from msgraph_beta.generated.models.networkaccess.bgp_configuration import BgpConfiguration
from msgraph_beta.generated.models.networkaccess.redundancy_configuration import RedundancyConfiguration
from msgraph_beta.generated.models.redundancy_tier import RedundancyTier
from msgraph_beta.generated.models.networkaccess.tunnel_configuration import TunnelConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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