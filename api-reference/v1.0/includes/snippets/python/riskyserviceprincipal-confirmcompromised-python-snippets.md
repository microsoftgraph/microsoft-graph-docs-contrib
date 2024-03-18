---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.confirm_compromised_post_request_body import ConfirmCompromisedPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConfirmCompromisedPostRequestBody(
	service_principal_ids = [
		"9089a539-a539-9089-39a5-899039a58990",
	],
)

await graph_client.identity_protection.risky_service_principals.confirm_compromised.post(request_body)


```