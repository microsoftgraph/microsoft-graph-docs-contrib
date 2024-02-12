---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.dismiss_post_request_body import DismissPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = DismissPostRequestBody(
	user_ids = [
		"4628e7df-dff3-407c-a08f-75f08c0806dc",
	],
)

await graph_client.identity_protection.risky_users.dismiss.post(request_body)


```