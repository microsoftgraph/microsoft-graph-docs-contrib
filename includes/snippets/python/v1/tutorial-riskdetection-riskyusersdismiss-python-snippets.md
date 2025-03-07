---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identityprotection.riskyusers.dismiss.dismiss_post_request_body import DismissPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DismissPostRequestBody(
	user_ids = [
		"4628e7df-dff3-407c-a08f-75f08c0806dc",
	],
)

await graph_client.identity_protection.risky_users.dismiss.post(request_body)


```