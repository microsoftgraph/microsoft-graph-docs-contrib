---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.presence.clear_presence.clear_presence_post_request_body import ClearPresencePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ClearPresencePostRequestBody(
	session_id = "22553876-f5ab-4529-bffb-cfe50aa89f87",
)

await graph_client.users.by_user_id('user-id').presence.clear_presence.post(request_body)


```