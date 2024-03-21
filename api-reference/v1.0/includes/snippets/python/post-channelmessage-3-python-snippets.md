---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.chat_message import ChatMessage
from msgraph.generated.models.chat_message_from_identity_set import ChatMessageFromIdentitySet
from msgraph.generated.models.identity import Identity
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.chat_message_hosted_content import ChatMessageHostedContent

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	created_date_time = "2019-02-04T19:58:15.511Z",
	from = ChatMessageFromIdentitySet(
		user = Identity(
			id = "id-value",
			display_name = "John Doe",
			additional_data = {
					"user_identity_type" : "aadUser",
			}
		),
	),
	body = ItemBody(
		content_type = BodyType.Html,
		content = "<div><div>\n<div><span><img height=\"250\" src=\"../hostedContents/1/$value\" width=\"176.2295081967213\" style=\"vertical-align:bottom; width:176px; height:250px\"></span>\n\n</div>\n\n\n</div>\n</div>",
	),
	hosted_contents = [
		ChatMessageHostedContent(
			content_bytes = base64.urlsafe_b64decode("iVBORw0KGgoAAAANSUhEUgAAANcAAAExCAYAAADvFzeeAAAXjklEQVR4Ae2d/XNU1RnH+9e0FFrA0RCIyaS8hRA0HV5KbS1gHRgVpjMClY4GHJ3yYm1HCmXaWttaaZUZtIIFKYi8lFAkvOQ9u5vN225IARVBbX9/Os9NbrLZbMjmhCfJPX5+2Lmb3T25y3O+n/M599x7w9f+++UXwoMakIF7n4GvUdR7X1RqSk01A8CFuZm5GGUAuIwKi72wF3ABF+YyygBwGRUWc2Eu4AIuzGWUAeAyKizmwlzABVyYyygDwGVUWMyFuYALuDCXUQaAy6iwmAtzARdwfWXMdeuzT+TGxz3Sfb1LunrapL07IW3pePDQ5/qavqef0c+OdYAELuAac4jGGkLL9rdvfyo9N9ODQAqBGmmrwGlb/R0u3xG4gMspOC5hG882CoRaaCSA8n1ff9doIQMu4PIOrus3u+8ZVNnw6e/Od5AALuDKOyz5hmqiPnfnzi1J9bSbgRWCpvvQfY307wQu4BoxJCOFaDK8rwsQmQsUIQhWW93XSIsewAVckYdLQ24F0Ui/926AARdwRRounZ6Np7GyYdN9DzdFBC7gijRc43GMlQ1U9s/6HXJNjYELuHI<<-----Removed----->>>>"),
			content_type = "image/png",
			additional_data = {
					"@microsoft_graph_temporary_id" : "1",
			}
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```