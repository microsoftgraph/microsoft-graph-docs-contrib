---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Html,
			content = "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>",
		),
		extensions = [
			OpenTypeExtension(
				odata_type = "microsoft.graph.openTypeExtension",
				extension_name = "Com.Contoso.HR",
				additional_data = {
						"company_name" : "Contoso",
						"expiration_date" : "2015-07-03T13:04:00.000Z",
						"top_picks" : [
							"Employees only",
							"Add spouse or guest",
							"Add family",
						],
				}
			),
		],
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').posts.by_post_id('post-id').reply.post(request_body)


```