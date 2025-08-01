---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.chat_message import ChatMessage
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.chat_message_attachment import ChatMessageAttachment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ChatMessage(
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Here's the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>",
	),
	attachments = [
		ChatMessageAttachment(
			id = "153fa47d-18c9-4179-be08-9879815a9f90",
			content_type = "reference",
			content_url = "https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx",
			name = "Budget.docx",
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```