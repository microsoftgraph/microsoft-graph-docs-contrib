---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.storage.filestorage.containers.item.recyclebin.items.delete.delete_post_request_body import DeletePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeletePostRequestBody(
	ids = [
		"5d625d33-338c-4a77-a98a-3e287116440c",
		"73133853-48f2-4956-bc4a-03f8d1675042",
	],
)

await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').recycle_bin.items.delete.post(request_body)


```