---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.remote_network import RemoteNetwork
from msgraph_beta.generated.models.region import Region

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoteNetwork(
	name = "Bellevue branch",
	region = Region.CanadaEast,
)

result = await graph_client.network_access.connectivity.remote_networks.post(request_body)


```