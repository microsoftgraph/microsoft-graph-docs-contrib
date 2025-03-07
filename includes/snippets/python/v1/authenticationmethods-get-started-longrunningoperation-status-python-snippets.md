---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.authentication.operations.item.long_running_operation_item_request_builder import LongRunningOperationItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = LongRunningOperationItemRequestBuilder.LongRunningOperationItemRequestBuilderGetQueryParameters(
		aadgdc = "AM4P",
		aadgsu = "ssprprod-a",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').authentication.operations.by_long_running_operation_id('longRunningOperation-id').get(request_configuration = request_configuration)


```