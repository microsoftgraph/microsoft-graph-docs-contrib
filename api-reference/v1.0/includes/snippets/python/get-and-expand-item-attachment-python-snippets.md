---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.attachments.item.attachment_item_request_builder import AttachmentItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AttachmentItemRequestBuilder.AttachmentItemRequestBuilderGetQueryParameters(
		expand = ["microsoft.graph.itemattachment/item"],
)

request_configuration = AttachmentItemRequestBuilder.AttachmentItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.by_attachment_id('attachment-id').get(request_configuration = request_configuration)


```