---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.confirm_compromised_post_request_body import ConfirmCompromisedPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConfirmCompromisedPostRequestBody(
	user_ids = [
		"29f270bb-4d23-4f68-8a57-dc73dc0d4caf",
		"20f91ec9-d140-4d90-9cd9-f618587a1471",
	],
)

await graph_client.identity_protection.risky_users.confirm_compromised.post(request_body)


```