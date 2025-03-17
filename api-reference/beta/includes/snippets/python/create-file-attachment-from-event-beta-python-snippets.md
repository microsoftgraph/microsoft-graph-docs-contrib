---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_attachment import FileAttachment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileAttachment(
	odata_type = "#microsoft.graph.fileAttachment",
	name = "menu.txt",
	content_bytes = base64.urlsafe_b64decode("bWFjIGFuZCBjaGVlc2UgdG9kYXk="),
)

result = await graph_client.me.events.by_event_id('event-id').attachments.post(request_body)


```