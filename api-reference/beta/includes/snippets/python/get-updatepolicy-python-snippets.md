---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.admin.windows.updates.update_policies.by_update_policy_id('updatePolicy-id').get()


```