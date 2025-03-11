---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.exchange.mailboxes.item.folders.item.items.items_request_builder import ItemsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ItemsRequestBuilder.ItemsRequestBuilderGetQueryParameters(
		filter = "createdDateTime ge 2021-08-21 and createdDateTime lt 2021-09-16",
		select = ["type","size"],
		top = 1,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.exchange.mailboxes.by_mailbox_id('mailbox-id').folders.by_mailbox_folder_id('mailboxFolder-id').items.get(request_configuration = request_configuration)


```