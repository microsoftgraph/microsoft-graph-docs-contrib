---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.file_attachment import FileAttachment

graph_client = GraphServiceClient(credentials, scopes)

request_body = FileAttachment(
	odata_type = "#microsoft.graph.fileAttachment",
	name = "smile",
	content_bytes = base64.urlsafe_b64decode("R0lGODdhEAYEAA7"),
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.post(request_body)


```