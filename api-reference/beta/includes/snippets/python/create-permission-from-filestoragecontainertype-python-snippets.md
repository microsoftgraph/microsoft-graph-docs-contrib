---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.permission import Permission
from msgraph_beta.generated.models.share_point_identity_set import SharePointIdentitySet
from msgraph_beta.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Permission(
	roles = [
		"owner",
	],
	granted_to_v2 = SharePointIdentitySet(
		user = Identity(
			id = "11111111-1111-1111-1111-111111111111",
		),
	),
)

result = await graph_client.storage.file_storage.container_types.by_file_storage_container_type_id('fileStorageContainerType-id').permissions.post(request_body)


```