---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.policies.permission_grant_policies.by_permission_grant_policy_id('permissionGrantPolicy-id').excludes.get()


```