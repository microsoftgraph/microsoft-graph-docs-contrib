---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.attachment import Attachment

graph_client = GraphServiceClient(credentials, scopes)

request_body = Attachment(
	odata_type = "#Microsoft.OutlookServices.FileAttachment",
	name = "name-value",
	content_type = "contentType-value",
	is_inline = False,
	additional_data = {
			"content_location" : "contentLocation-value",
			"content_bytes" : "contentBytes-value",
	}
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.post(request_body)


```