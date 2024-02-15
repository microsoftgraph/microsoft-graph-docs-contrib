---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.drive_item import DriveItem

graph_client = GraphServiceClient(credentials, scopes)

request_body = DriveItem(
	name = "Shared legal agreements",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').patch(request_body)


```