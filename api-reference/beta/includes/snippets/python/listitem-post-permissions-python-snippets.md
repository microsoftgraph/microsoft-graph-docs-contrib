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
	granted_to_v2 = SharePointIdentitySet(
		application = Identity(
			id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
			display_name = "Contoso Time Manager App",
		),
	),
	roles = [
		"write",
	],
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').permissions.post(request_body)


```