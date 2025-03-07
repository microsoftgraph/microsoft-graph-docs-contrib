---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.item.cancel.cancel_post_request_body import CancelPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CancelPostRequestBody(
	comment = "Cancelling for this week due to all hands",
)

await graph_client.me.events.by_event_id('event-id').cancel.post(request_body)


```