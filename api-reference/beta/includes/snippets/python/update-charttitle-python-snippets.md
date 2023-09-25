---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = WorkbookChartTitle(
	overlay = True,
	text = "text-value",
	visible = True,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.worksheets.by_worksheet_id('workbookWorksheet-id').charts.by_chart_id('workbookChart-id').title.patch(body = request_body)


```