---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.presence.set_status_message.set_status_message_post_request_body import SetStatusMessagePostRequestBody
from msgraph.generated.models.presence_status_message import PresenceStatusMessage
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetStatusMessagePostRequestBody(
	status_message = PresenceStatusMessage(
		message = ItemBody(
			content = "Hey I am available now",
			content_type = BodyType.Text,
		),
	),
)

await graph_client.users.by_user_id('user-id').presence.set_status_message.post(request_body)


```