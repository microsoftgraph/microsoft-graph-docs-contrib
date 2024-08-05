---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.shares.item.drive_item.drive_item_request_builder import DriveItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = DriveItemRequestBuilder.DriveItemRequestBuilderGetQueryParameters(
		expand = ["children"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.shares.by_shared_drive_item_id('sharedDriveItem-id').drive_item.get(request_configuration = request_configuration)


```