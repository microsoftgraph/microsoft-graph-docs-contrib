---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkbookChartAxisTitle()
request_body.text = 'text-value'

request_body.visible = True




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.worksheets.by_worksheet_id('workbookWorksheet-id').charts.by_chart_id('workbookChart-id').axes.value_axis.title.patch(request_body = request_body)


```