---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateUploadSessionPostRequestBody(
	attachment_item = AttachmentItem(
		attachment_type = AttachmentType.File,
		name = "scenary",
		size = 7208534,
		is_inline = True,
		content_id = "my_inline_picture",
	),
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.create_upload_session.post(request_body)


```