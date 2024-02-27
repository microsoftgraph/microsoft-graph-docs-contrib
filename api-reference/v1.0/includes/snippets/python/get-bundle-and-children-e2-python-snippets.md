---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.drive_item_item_request_builder import DriveItemItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DriveItemItemRequestBuilder.DriveItemItemRequestBuilderGetQueryParameters(
		expand = ["children"],
)

request_configuration = DriveItemItemRequestBuilder.DriveItemItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').get(request_configuration = request_configuration)


```