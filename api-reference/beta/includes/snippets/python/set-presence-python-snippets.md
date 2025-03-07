---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.presence.set_presence.set_presence_post_request_body import SetPresencePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetPresencePostRequestBody(
	session_id = "22553876-f5ab-4529-bffb-cfe50aa89f87",
	availability = "Available",
	activity = "Available",
	expiration_duration = "PT1H",
)

await graph_client.users.by_user_id('user-id').presence.set_presence.post(request_body)


```