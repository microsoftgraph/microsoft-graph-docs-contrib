---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.permission import Permission

graph_client = GraphServiceClient(credentials, scopes)

request_body = Permission(
	roles = [
		"manager",
	],
)

result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').permissions.by_permission_id('permission-id').patch(request_body)


```