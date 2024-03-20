---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.delta.delta_request_builder import DeltaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		token = "latest",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').delta.get(request_configuration = request_configuration)


```