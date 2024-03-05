---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.network_access.connectivity.branches.by_branch_site_id('branchSite-id').connectivity_configuration.get()


```