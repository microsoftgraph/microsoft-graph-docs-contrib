---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.message_item_request_builder import MessageItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = MessageItemRequestBuilder.MessageItemRequestBuilderGetQueryParameters(
		expand = ["extensions($filter=id eq 'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.messages.by_message_id('message-id').get(request_configuration = request_configuration)


```