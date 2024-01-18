---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	body = ItemBody(
		content = "Hello World",
	),
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```