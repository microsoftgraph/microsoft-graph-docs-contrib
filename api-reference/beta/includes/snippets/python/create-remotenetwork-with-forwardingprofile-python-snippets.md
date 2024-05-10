---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.remote_network import RemoteNetwork
from msgraph.generated.models.forwarding_profile import ForwardingProfile

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoteNetwork(
	name = "Bellevue branch w/ fwd profile",
	region = Region.CanadaEast,
	forwarding_profiles = [
		ForwardingProfile(
			id = "1adaf535-1e31-4e14-983f-2270408162bf",
		),
	],
)

result = await graph_client.network_access.connectivity.remote_networks.post(request_body)


```