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
		drive_id = "6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B",
		id = "DCD0D3AD-8989-4F23-A5A2-2C086050513F",
	),
	name = "contoso plan (copy).txt",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').copy.post(request_body)


```