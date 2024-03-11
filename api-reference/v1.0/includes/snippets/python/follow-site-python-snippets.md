---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.add_post_request_body import AddPostRequestBody
from msgraph.generated.models.site import Site

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddPostRequestBody(
	value = [
		Site(
			id = "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
		),
		Site(
			id = "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
		),
	],
)

result = await graph_client.users.by_user_id('user-id').followed_sites.add.post(request_body)


```