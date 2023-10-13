---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ItemRetentionLabel(
	retention_settings = RetentionLabelSettings(
		is_record_locked = True,
	),
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').retention_label.patch(body = request_body)


```