---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.groups.by_group_id('group-id').endpoints.by_endpoint_id('endpoint-id').get()


```