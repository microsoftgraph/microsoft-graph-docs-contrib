---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookNamedItem(
	type = "type-value",
	scope = "scope-value",
	comment = "comment-value",
	value = Json(
	),
	visible = True,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.names.by_workbook_named_item_id('workbookNamedItem-id').patch(request_body)


```