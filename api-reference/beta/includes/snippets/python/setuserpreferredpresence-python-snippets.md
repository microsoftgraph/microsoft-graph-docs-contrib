---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.presence.set_user_preferred_presence.set_user_preferred_presence_post_request_body import SetUserPreferredPresencePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetUserPreferredPresencePostRequestBody(
	availability = "DoNotDisturb",
	activity = "DoNotDisturb",
	expiration_duration = "PT8H",
)

await graph_client.users.by_user_id('user-id').presence.set_user_preferred_presence.post(request_body)


```