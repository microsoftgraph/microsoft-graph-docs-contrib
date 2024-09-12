---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.sites.item.lists.item.items.items_request_builder import ItemsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ItemsRequestBuilder.ItemsRequestBuilderGetQueryParameters(
		expand = ["fields($select=Name,Color,Quantity)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.get(request_configuration = request_configuration)


```