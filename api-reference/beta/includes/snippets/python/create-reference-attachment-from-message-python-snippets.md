---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceAttachment(
	odata_type = "#microsoft.graph.referenceAttachment",
	name = "Personal pictures",
	source_url = "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
	provider_type = ReferenceAttachmentProvider.OneDriveConsumer,
	permission = ReferenceAttachmentPermission.Edit,
	is_folder = True,
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.post(request_body)


```