---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').groups.by_external_group_id('externalGroup-id').get()


```