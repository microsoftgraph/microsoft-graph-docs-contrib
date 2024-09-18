---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_storage_container import FileStorageContainer

graph_client = GraphServiceClient(credentials, scopes)

request_body = FileStorageContainer(
	display_name = "Updated Name",
	description = "Updated Description",
)

result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').patch(request_body)


```