---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.content.content_request_builder import ContentRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ContentRequestBuilder.ContentRequestBuilderGetQueryParameters(
		format = "{format}",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').content.get(request_configuration = request_configuration)


```