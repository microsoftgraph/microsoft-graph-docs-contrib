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
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetStatusMessagePostRequestBody(
	status_message = PresenceStatusMessage(
		message = ItemBody(
			content = "Hey I'm currently in a meeting.",
			content_type = BodyType.Text,
		),
		expiry_date_time = DateTimeTimeZone(
			date_time = "2022-10-18T17:05:33.2079781",
			time_zone = "Pacific Standard Time",
		),
	),
)

await graph_client.users.by_user_id('user-id').presence.set_status_message.post(request_body)


```