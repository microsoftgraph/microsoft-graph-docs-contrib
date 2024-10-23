---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.events.item.accept.accept_post_request_body import AcceptPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AcceptPostRequestBody(
	comment = "comment-value",
	send_response = True,
)

await graph_client.me.events.by_event_id('event-id').accept.post(request_body)


```