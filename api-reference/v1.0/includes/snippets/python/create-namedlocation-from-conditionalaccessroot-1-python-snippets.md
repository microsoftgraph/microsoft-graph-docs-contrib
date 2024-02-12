---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ip_named_location import IpNamedLocation
from msgraph.generated.models.ip_range import IpRange
from msgraph.generated.models.i_pv4_cidr_range import IPv4CidrRange
from msgraph.generated.models.i_pv6_cidr_range import IPv6CidrRange

graph_client = GraphServiceClient(credentials, scopes)

request_body = IpNamedLocation(
	odata_type = "#microsoft.graph.ipNamedLocation",
	display_name = "Untrusted IP named location",
	is_trusted = False,
	ip_ranges = [
		IPv4CidrRange(
			odata_type = "#microsoft.graph.iPv4CidrRange",
			cidr_address = "12.34.221.11/22",
		),
		IPv6CidrRange(
			odata_type = "#microsoft.graph.iPv6CidrRange",
			cidr_address = "2001:0:9d38:90d6:0:0:0:0/63",
		),
	],
)

result = await graph_client.identity.conditional_access.named_locations.post(request_body)


```