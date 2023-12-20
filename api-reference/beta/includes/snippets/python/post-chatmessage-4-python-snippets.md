---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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