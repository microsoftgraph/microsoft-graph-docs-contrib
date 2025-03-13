---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.messages.item.attachments.item.attachment_item_request_builder import AttachmentItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AttachmentItemRequestBuilder.AttachmentItemRequestBuilderGetQueryParameters(
		expand = ["microsoft.graph.itemattachment/item"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.by_attachment_id('attachment-id').get(request_configuration = request_configuration)


```