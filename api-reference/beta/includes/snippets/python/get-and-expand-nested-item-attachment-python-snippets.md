---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AttachmentRequestBuilder.AttachmentRequestBuilderGetQueryParameters(
		expand = ["microsoft.graph.itemattachment/item"],
)

request_configuration = AttachmentRequestBuilder.AttachmentRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.messages.by_message_id('message-id').attachments.by_attachment_id('attachment-id').get(request_configuration = request_configuration)


```