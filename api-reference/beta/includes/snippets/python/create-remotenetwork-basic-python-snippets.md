---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.remote_network import RemoteNetwork

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoteNetwork(
	name = "Bellevue branch",
	region = Region.CanadaEast,
)

result = await graph_client.network_access.connectivity.remote_networks.post(request_body)


```