---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = WorkbookChart(
	id = "id-value",
	height = 99,
	left = 99,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.worksheets.by_worksheet_id('workbookWorksheet-id').charts.post(body = request_body)


```