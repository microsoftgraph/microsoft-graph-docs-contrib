---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.item.tentatively_accept.tentatively_accept_post_request_body import TentativelyAcceptPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TentativelyAcceptPostRequestBody(
	comment = "I will probably be able to make it.",
	send_response = True,
)

await graph_client.me.events.by_event_id('event-id').tentatively_accept.post(request_body)


```