---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.messages.item.mark_as_junk.mark_as_junk_post_request_body import MarkAsJunkPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MarkAsJunkPostRequestBody(
	move_to_junk = True,
)

result = await graph_client.me.messages.by_message_id('message-id').mark_as_junk.post(request_body)


```