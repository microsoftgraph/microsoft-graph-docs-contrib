---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.shares.item.drive_item.drive_item_request_builder import DriveItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DriveItemRequestBuilder.DriveItemRequestBuilderGetQueryParameters(
		expand = ["children"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.shares.by_shared_drive_item_id('sharedDriveItem-id').drive_item.get(request_configuration = request_configuration)


```