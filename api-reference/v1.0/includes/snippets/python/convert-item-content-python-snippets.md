---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.content.content_request_builder import ContentRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ContentRequestBuilder.ContentRequestBuilderGetQueryParameters(
		format = "{format}",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').content.get(request_configuration = request_configuration)


```