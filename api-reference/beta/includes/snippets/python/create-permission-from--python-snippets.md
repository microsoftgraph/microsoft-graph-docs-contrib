---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.permission import Permission
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity

graph_client = GraphServiceClient(credentials, scopes)

request_body = Permission(
	roles = [
		"write",
	],
	granted_to_identities = [
		IdentitySet(
			application = Identity(
				id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
				display_name = "Contoso Time Manager App",
			),
		),
	],
)

result = await graph_client.sites.by_site_id('site-id').permissions.post(request_body)


```