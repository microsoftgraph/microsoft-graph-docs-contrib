---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.presence.set_presence.set_presence_post_request_body import SetPresencePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetPresencePostRequestBody(
	session_id = "22553876-f5ab-4529-bffb-cfe50aa89f87",
	availability = "Available",
	activity = "Available",
	expiration_duration = "PT1H",
)

await graph_client.users.by_user_id('user-id').presence.set_presence.post(request_body)


```