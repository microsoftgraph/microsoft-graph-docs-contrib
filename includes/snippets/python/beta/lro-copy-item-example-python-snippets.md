---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.copy.copy_post_request_body import CopyPostRequestBody
from msgraph.generated.models.item_reference import ItemReference

graph_client = GraphServiceClient(credentials, scopes)

request_body = CopyPostRequestBody(
	parent_reference = ItemReference(
		path = "/drive/root:/Documents",
	),
	name = "Copy of LargeFolder1",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').copy.post(request_body)


```