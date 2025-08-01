---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.permission import Permission
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Permission(
	roles = [
		"manager",
	],
)

result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').permissions.by_permission_id('permission-id').patch(request_body)


```