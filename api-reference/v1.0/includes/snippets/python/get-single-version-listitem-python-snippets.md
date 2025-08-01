---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.sites.item.lists.item.items.item.versions.item.list_item_version_item_request_builder import ListItemVersionItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ListItemVersionItemRequestBuilder.ListItemVersionItemRequestBuilderGetQueryParameters(
		expand = ["fields"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').versions.by_list_item_version_id('listItemVersion-id').get(request_configuration = request_configuration)


```