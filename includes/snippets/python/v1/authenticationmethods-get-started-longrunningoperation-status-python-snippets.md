---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.authentication.operations.item.long_running_operation_item_request_builder import LongRunningOperationItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = LongRunningOperationItemRequestBuilder.LongRunningOperationItemRequestBuilderGetQueryParameters(
		aadgdc = "AM4P",
		aadgsu = "ssprprod-a",
)

request_configuration = LongRunningOperationItemRequestBuilder.LongRunningOperationItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').authentication.operations.by_long_running_operation_id('longRunningOperation-id').get(request_configuration = request_configuration)


```