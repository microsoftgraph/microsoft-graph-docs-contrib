---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').permissions.by_permission_id('permission-id').delete()


```