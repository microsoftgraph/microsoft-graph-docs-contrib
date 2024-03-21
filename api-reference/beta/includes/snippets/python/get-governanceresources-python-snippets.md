---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').resources.get()


```