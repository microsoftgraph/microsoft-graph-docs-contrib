---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.directory.deleted_items.by_directory_object_id('directoryObject-id').restore.post(None)


```