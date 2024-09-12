---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.drives.item.items.item.content_stream.content_stream_request_builder import ContentStreamRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

request_configuration = RequestConfiguration()
request_configuration.headers.add("Range", "bytes=0-1023")


await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').content_stream.get(request_configuration = request_configuration)


```