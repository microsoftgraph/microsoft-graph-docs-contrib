---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.chat_message import ChatMessage
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.chat_message_attachment import ChatMessageAttachment
from msgraph.generated.models.chat_message_hosted_content import ChatMessageHostedContent

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	subject = "Announcement Subheading",
	body = ItemBody(
		content_type = BodyType.Text,
		content = "<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text",
	),
	attachments = [
		ChatMessageAttachment(
			id = "d7ddbf876ae340c3a03bada395ec7da7",
			content_type = "application/vnd.microsoft.teams.messaging-announcementBanner",
			content_url = None,
			content = "{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/1/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"../hostedContents/2/$value\"}}}}",
			name = None,
			thumbnail_url = None,
		),
	],
	hosted_contents = [
		ChatMessageHostedContent(
			content_bytes = base64.urlsafe_b64decode("iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4"),
			content_type = "image/png",
			additional_data = {
					"@microsoft_graph_temporary_id" : "1",
			}
		),
		ChatMessageHostedContent(
			content_bytes = base64.urlsafe_b64decode("iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4"),
			content_type = "image/png",
			additional_data = {
					"@microsoft_graph_temporary_id" : "2",
			}
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```