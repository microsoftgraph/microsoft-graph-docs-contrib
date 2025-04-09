---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ip_named_location import IpNamedLocation
from msgraph_beta.generated.models.ip_range import IpRange
from msgraph_beta.generated.models.i_pv4_cidr_range import IPv4CidrRange
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IpNamedLocation(
	odata_type = "#microsoft.graph.ipNamedLocation",
	display_name = "Untrusted named location with only IPv4 address",
	is_trusted = False,
	ip_ranges = [
		IPv4CidrRange(
			odata_type = "#microsoft.graph.iPv4CidrRange",
			cidr_address = "6.5.4.3/18",
		),
	],
)

result = await graph_client.identity.conditional_access.named_locations.by_named_location_id('namedLocation-id').patch(request_body)


```