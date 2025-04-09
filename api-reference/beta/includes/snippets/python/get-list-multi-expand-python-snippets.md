---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.lists.item.list_item_request_builder import ListItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ListItemRequestBuilder.ListItemRequestBuilderGetQueryParameters(
		select = ["name","lastModifiedDateTime"],
		expand = ["columns(select=name,description)","items(expand=fields(select=Name,Color,Quantity)",")"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').get(request_configuration = request_configuration)


```