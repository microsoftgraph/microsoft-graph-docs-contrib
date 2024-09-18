---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_storage_container import FileStorageContainer
from msgraph_beta.generated.models.file_storage_container_settings import FileStorageContainerSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = FileStorageContainer(
	display_name = "My Application Storage Container",
	description = "Description of My Application Storage Container",
	container_type_id = UUID("91710488-5756-407f-9046-fbe5f0b4de73"),
	settings = FileStorageContainerSettings(
		is_ocr_enabled = True,
	),
)

result = await graph_client.storage.file_storage.containers.post(request_body)


```