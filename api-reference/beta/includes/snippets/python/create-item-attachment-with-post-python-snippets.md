---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Text,
			content = "I attached an event.",
		),
		attachments = [
			ItemAttachment(
				odata_type = "#microsoft.graph.itemAttachment",
				name = "Holiday event",
				item = Event(
					odata_type = "microsoft.graph.event",
					subject = "Discuss gifts for children",
					body = ItemBody(
						content_type = BodyType.Html,
						content = "Let's look for funding!",
					),
					start = DateTimeTimeZone(
						date_time = "2019-12-02T18:00:00",
						time_zone = "Pacific Standard Time",
					),
					end = DateTimeTimeZone(
						date_time = "2019-12-02T19:00:00",
						time_zone = "Pacific Standard Time",
					),
				),
			),
		],
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').reply.post(request_body)


```