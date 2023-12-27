---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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