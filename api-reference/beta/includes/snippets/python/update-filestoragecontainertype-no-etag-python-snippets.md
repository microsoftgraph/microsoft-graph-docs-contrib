---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_storage_container_type import FileStorageContainerType
from msgraph_beta.generated.models.file_storage_container_type_settings import FileStorageContainerTypeSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileStorageContainerType(
	odata_type = "#microsoft.graph.fileStorageContainerType",
	settings = FileStorageContainerTypeSettings(
		url_template = "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
		is_item_versioning_enabled = True,
		is_sharing_restricted = False,
	),
)

result = await graph_client.storage.file_storage.container_types.by_file_storage_container_type_id('fileStorageContainerType-id').patch(request_body)


```