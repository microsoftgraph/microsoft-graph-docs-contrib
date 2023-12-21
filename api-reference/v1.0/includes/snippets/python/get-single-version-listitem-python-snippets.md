---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ListItemVersionItemRequestBuilder.ListItemVersionItemRequestBuilderGetQueryParameters(
		expand = ["fields"],
)

request_configuration = ListItemVersionItemRequestBuilder.ListItemVersionItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_list_item_id('listItem-id').versions.by_list_item_version_id('listItemVersion-id').get(request_configuration = request_configuration)


```