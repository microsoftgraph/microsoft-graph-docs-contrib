---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').permissions.get()


```