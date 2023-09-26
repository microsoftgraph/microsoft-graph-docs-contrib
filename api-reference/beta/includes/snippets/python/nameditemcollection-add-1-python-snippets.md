---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AddPostRequestBody(
	name = "test5",
	reference = "=Sheet1!$F$15:$N$27",
	comment = "Comment for the named item",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.names.add.post(body = request_body)


```