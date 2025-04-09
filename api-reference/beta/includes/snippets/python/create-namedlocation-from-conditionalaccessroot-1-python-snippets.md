---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ip_named_location import IpNamedLocation
from msgraph_beta.generated.models.ip_range import IpRange
from msgraph_beta.generated.models.i_pv4_cidr_range import IPv4CidrRange
from msgraph_beta.generated.models.i_pv6_cidr_range import IPv6CidrRange
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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