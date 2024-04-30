---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.remote_network import RemoteNetwork
from msgraph.generated.models.forwarding_profile import ForwardingProfile
from msgraph.generated.models.device_link import DeviceLink
from msgraph.generated.models.bgp_configuration import BgpConfiguration
from msgraph.generated.models.redundancy_configuration import RedundancyConfiguration
from msgraph.generated.models.tunnel_configuration_i_k_ev2_default import TunnelConfigurationIKEv2Default

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoteNetwork(
	name = "Bellevue branch w/ device link",
	region = Region.CanadaEast,
	forwarding_profiles = [
		ForwardingProfile(
			id = "1adaf535-1e31-4e14-983f-2270408162bf",
		),
	],
	device_links = [
		DeviceLink(
			name = "CPE1",
			ip_address = "52.13.21.25",
			bandwidth_capacity_in_mbps = BandwidthCapacityInMbps.Mbps500,
			device_vendor = DeviceVendor.BarracudaNetworks,
			bgp_configuration = BgpConfiguration(
				local_ip_address = "192.168.1.2",
				peer_ip_address = "10.1.1.2",
				asn = 65533,
			),
			redundancy_configuration = RedundancyConfiguration(
				zone_local_ip_address = None,
				redundancy_tier = RedundancyTier.NoRedundancy,
			),
			tunnel_configuration = TunnelConfigurationIKEv2Default(
				odata_type = "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
				pre_shared_key = "test123",
			),
		),
	],
)

result = await graph_client.network_access.connectivity.remote_networks.post(request_body)


```