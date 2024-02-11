---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.add_post_request_body import AddPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddPostRequestBody(
	address = "A1:D8",
	has_headers = False,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.add.post(request_body)


```