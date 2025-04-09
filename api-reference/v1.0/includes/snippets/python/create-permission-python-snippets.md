---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.permission import Permission
from msgraph.generated.models.share_point_identity_set import SharePointIdentitySet
from msgraph.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Permission(
	roles = [
		"reader",
	],
	granted_to_v2 = SharePointIdentitySet(
		user = Identity(
			additional_data = {
					"user_principal_name" : "jacob@fabrikam.com",
			}
		),
	),
)

result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').permissions.post(request_body)


```