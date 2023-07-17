---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceLink()
request_body.name = 'device link 1'

request_body.ip_address = '24.123.22.168'

request_body.devicevendor(DeviceVendor.Intel('devicevendor.intel'))

request_body.bandwidthcapacityinmbps(BandwidthCapacityInMbps.Mbps250('bandwidthcapacityinmbps.mbps250'))

bgp_configuration = BgpConfiguration()
bgp_configuration.local_ip_address = '1.128.24.22'

bgp_configuration.peer_ip_address = '1.128.24.28'

bgp_configuration.Asn = 4


request_body.bgp_configuration = bgp_configuration
redundancy_configuration = RedundancyConfiguration()
redundancy_configuration.zone_local_ip_address = '1.128.23.20'

redundancy_configuration.redundancytier(RedundancyTier.ZoneRedundancy('redundancytier.zoneredundancy'))


request_body.redundancy_configuration = redundancy_configuration
tunnel_configuration = TunnelConfiguration()
tunnel_configuration.@odata_type = 'microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default'

tunnel_configuration.pre_shared_key = '/microsoft/keyVault/placeholder'


request_body.tunnel_configuration = tunnel_configuration



result = await client.network_access.connectivity.branches.by_branche_id('branchSite-id').device_links.post(request_body = request_body)


```