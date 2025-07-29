---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.share_point_group_member import SharePointGroupMember
from msgraph_beta.generated.models.share_point_identity_set import SharePointIdentitySet
from msgraph_beta.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointGroupMember(
	odata_type = "#microsoft.graph.sharePointGroupMember",
	identity = SharePointIdentitySet(
		user = Identity(
			additional_data = {
					"user_principal_name" : "john.smith@contoso.com",
			}
		),
	),
)

result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').share_point_groups.by_share_point_group_id('sharePointGroup-id').members.post(request_body)


```