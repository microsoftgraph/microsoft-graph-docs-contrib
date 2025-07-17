---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.file_attachment import FileAttachment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileAttachment(
	odata_type = "microsoft.graph.fileAttachment",
	name = "name-value",
	content_type = "contentType-value",
	is_inline = False,
	content_location = "contentLocation-value",
	content_bytes = base64.urlsafe_b64decode("base64-contentBytes-value"),
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.post(request_body)


```