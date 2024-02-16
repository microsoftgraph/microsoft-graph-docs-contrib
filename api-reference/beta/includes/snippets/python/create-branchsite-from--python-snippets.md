---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.branch_site import BranchSite

graph_client = GraphServiceClient(credentials, scopes)

request_body = BranchSite(
	name = "test branch - 11:50",
	country = "United States",
	region = Region.EastUS,
	bandwidth_capacity = 500,
)

result = await graph_client.network_access.connectivity.branches.post(request_body)


```