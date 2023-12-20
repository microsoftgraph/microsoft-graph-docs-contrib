---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyAllPostRequestBody(
	message = Message(
		attachments = [
			FileAttachment(
				odata_type = "#microsoft.graph.fileAttachment",
				name = "guidelines.txt",
				content_bytes = base64.urlsafe_b64decode("bWFjIGFuZCBjaGVlc2UgdG9kYXk="),
			),
		],
	),
	comment = "Please take a look at the attached guidelines before you decide on the name.",
)

await graph_client.me.messages.by_message_id('message-id').reply_all.post(request_body)


```