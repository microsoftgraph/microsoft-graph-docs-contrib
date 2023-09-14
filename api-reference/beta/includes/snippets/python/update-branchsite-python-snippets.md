---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BranchSite(
	name = "My updated branch",
)

result = await graph_client.network_access.connectivity.branches.by_branche_id('branchSite-id').patch(body = request_body)


```