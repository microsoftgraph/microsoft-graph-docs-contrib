---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identityprotection.riskyusers.confirm_safe.confirm_safe_post_request_body import ConfirmSafePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConfirmSafePostRequestBody(
	user_ids = [
		"5a0c76d2-cb57-4ece-9bc1-c323178f116a",
		"96609214-09ef-4f80-9d4a-ace5fceecaec",
		"05020696-4eb8-45a3-918f-8f8bb7ad6015",
	],
)

await graph_client.identity_protection.risky_users.confirm_safe.post(request_body)


```