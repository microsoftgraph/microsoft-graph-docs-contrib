---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.permission import Permission
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Permission(
	roles = [
		"write",
	],
	granted_to = IdentitySet(
		application = Identity(
			id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
		),
	),
)

result = await graph_client.sites.by_site_id('site-id').permissions.post(request_body)


```