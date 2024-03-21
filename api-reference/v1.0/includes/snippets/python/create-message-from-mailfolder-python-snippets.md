---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.item_body import ItemBody

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