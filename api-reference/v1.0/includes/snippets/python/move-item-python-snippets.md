---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = DriveItem(
	parent_reference = ItemReference(
		id = "{new-parent-folder-id}",
	),
	name = "new-item-name.txt",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').patch(body = request_body)


```