---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.drive_item import DriveItem
from msgraph.generated.models.folder import Folder

graph_client = GraphServiceClient(credentials, scopes)

request_body = DriveItem(
	name = "New Folder",
	folder = Folder(
	),
	additional_data = {
			"@microsoft_graph_conflict_behavior" : "rename",
	}
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').children.post(request_body)


```