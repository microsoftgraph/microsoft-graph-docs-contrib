---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_storage_container import FileStorageContainer
from msgraph_beta.generated.models.file_storage_container_settings import FileStorageContainerSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileStorageContainer(
	display_name = "My Application Storage Container",
	description = "Description of My Application Storage Container",
	container_type_id = UUID("91710488-5756-407f-9046-fbe5f0b4de73"),
	settings = FileStorageContainerSettings(
		is_ocr_enabled = True,
		item_major_version_limit = 50,
		is_item_versioning_enabled = True,
		item_default_sensitivity_label_id = "3d8789ae-7375-4ded-8eeb-d6bc226e42fb",
	),
)

result = await graph_client.storage.file_storage.containers.post(request_body)


```