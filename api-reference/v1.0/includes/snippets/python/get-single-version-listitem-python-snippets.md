---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.sites.item.lists.item.items.item.versions.item.list_item_version_item_request_builder import ListItemVersionItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ListItemVersionItemRequestBuilder.ListItemVersionItemRequestBuilderGetQueryParameters(
		expand = ["fields"],
)

request_configuration = ListItemVersionItemRequestBuilder.ListItemVersionItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').versions.by_list_item_version_id('listItemVersion-id').get(request_configuration = request_configuration)


```