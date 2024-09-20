---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.file_storage_container import FileStorageContainer
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileStorageContainer(
	display_name = "My Application Storage Container",
	description = "Description of My Application Storage Container",
	container_type_id = UUID("91710488-5756-407f-9046-fbe5f0b4de73"),
	additional_data = {
			"settings" : {
					"is_ocr_enabled" : True,
			},
	}
)

result = await graph_client.storage.file_storage.containers.post(request_body)


```