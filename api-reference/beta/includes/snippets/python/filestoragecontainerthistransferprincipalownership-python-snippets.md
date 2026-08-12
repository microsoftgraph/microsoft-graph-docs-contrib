---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.storage.filestorage.containers.item.transfer_principal_ownership.transfer_principal_ownership_post_request_body import TransferPrincipalOwnershipPostRequestBody
from msgraph_beta.generated.models.identity_set import IdentitySet
from msgraph_beta.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TransferPrincipalOwnershipPostRequestBody(
	transfer_to = IdentitySet(
		user = Identity(
			additional_data = {
					"user_principal_name" : "newowner@contoso.com",
			}
		),
	),
)

await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').transfer_principal_ownership.post(request_body)


```