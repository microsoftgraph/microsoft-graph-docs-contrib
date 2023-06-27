---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IpNamedLocation()
request_body.@odata_type = '#microsoft.graph.ipNamedLocation'

request_body.display_name = 'Untrusted named location with only IPv4 address'

request_body.is_trusted = False

ip_ranges_ip_range1 = IPv4CidrRange()
ip_ranges_ip_range1.@odata_type = '#microsoft.graph.iPv4CidrRange'

ip_ranges_ip_range1.cidr_address = '6.5.4.3/18'


ipRangesArray []= ipRangesIpRange1;
request_body.ipranges(ipRangesArray)





result = await client.identity.conditional_access.named_locations.by_named_location_id('namedLocation-id').patch(request_body = request_body)


```