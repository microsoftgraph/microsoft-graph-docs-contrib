---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.contentStream.content_stream_request_builder import ContentStreamRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = ContentStreamRequestBuilder.ContentStreamRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("Range", "bytes=0-1023")


await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').content_stream.get(request_configuration = request_configuration)


```