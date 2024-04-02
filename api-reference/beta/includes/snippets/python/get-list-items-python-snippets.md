---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.sites.item.lists.item.items.items_request_builder import ItemsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ItemsRequestBuilder.ItemsRequestBuilderGetQueryParameters(
		expand = ["fields(select=Name,Color,Quantity)"],
)

request_configuration = ItemsRequestBuilder.ItemsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.get(request_configuration = request_configuration)


```