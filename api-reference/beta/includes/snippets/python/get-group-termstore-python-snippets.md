---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.term_store.groups.item.group_item_request_builder import GroupItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupItemRequestBuilder.GroupItemRequestBuilderGetQueryParameters(
		select = ["*","parentSiteId"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.by_site_id('site-id').term_store.groups.by_group_id('group-id').get(request_configuration = request_configuration)


```