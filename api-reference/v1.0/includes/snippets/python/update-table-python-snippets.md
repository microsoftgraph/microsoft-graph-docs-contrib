---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = WorkbookTable(
	name = "name-value",
	show_headers = True,
	show_totals = True,
	style = "style-value",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.tables.by_table_id('workbookTable-id').patch(body = request_body)


```