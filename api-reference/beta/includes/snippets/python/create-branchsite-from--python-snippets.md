---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.branch_site import BranchSite
from msgraph_beta.generated.models.region import Region
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BranchSite(
	name = "test branch - 11:50",
	country = "United States",
	region = Region.EastUS,
	bandwidth_capacity = 500,
)

result = await graph_client.network_access.connectivity.branches.post(request_body)


```