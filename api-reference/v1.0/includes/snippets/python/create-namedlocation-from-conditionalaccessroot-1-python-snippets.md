---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IpNamedLocation()
request_body.@odata_type = '#microsoft.graph.ipNamedLocation'

request_body.display_name = 'Untrusted IP named location'

request_body.is_trusted = False

ip_ranges_ip_range1 = IPv4CidrRange()
ip_ranges_ip_range1.@odata_type = '#microsoft.graph.iPv4CidrRange'

ip_ranges_ip_range1.cidr_address = '12.34.221.11/22'


ipRangesArray []= ipRangesIpRange1;
ip_ranges_ip_range2 = IPv6CidrRange()
ip_ranges_ip_range2.@odata_type = '#microsoft.graph.iPv6CidrRange'

ip_ranges_ip_range2.cidr_address = '2001:0:9d38:90d6:0:0:0:0/63'


ipRangesArray []= ipRangesIpRange2;
request_body.ipranges(ipRangesArray)





result = await client.identity.conditional_access.named_locations.post(request_body = request_body)


```