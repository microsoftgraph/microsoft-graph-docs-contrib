---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.user_item_request_builder import UserItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserItemRequestBuilder.UserItemRequestBuilderGetQueryParameters(
		select = ["ext55gb1l09_msLearnCourses"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').get(request_configuration = request_configuration)


```