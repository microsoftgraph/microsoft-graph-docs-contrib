---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CopyPostRequestBody(
	parent_reference = ItemReference(
		path = "/drive/root:/Documents",
	),
	name = "Copy of LargeFolder1",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').copy.post(body = request_body)


```