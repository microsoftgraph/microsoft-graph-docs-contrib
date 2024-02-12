---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.reference_attachment import ReferenceAttachment

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceAttachment(
	odata_type = "#microsoft.graph.referenceAttachment",
	name = "Personal pictures",
	source_url = "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
	provider_type = ReferenceAttachmentProvider.OneDriveConsumer,
	permission = ReferenceAttachmentPermission.Edit,
	is_folder = True,
)

result = await graph_client.me.events.by_event_id('event-id').attachments.post(request_body)


```