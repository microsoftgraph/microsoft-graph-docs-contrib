---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	received_date_time = "datetime-value",
	sent_date_time = "datetime-value",
	has_attachments = True,
	subject = "subject-value",
	body = ItemBody(
		content_type = BodyType.Text,
		content = "content-value",
	),
	body_preview = "bodyPreview-value",
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').messages.post(request_body)


```