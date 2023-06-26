---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkbookChartFont()
request_body.bold = True

request_body.color = 'color-value'

request_body.italic = True

request_body.name = 'name-value'

request_body.Size = 99

request_body.underline = 'underline-value'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.worksheets.by_worksheet_id('workbookWorksheet-id').charts.by_chart_id('workbookChart-id').axes.value_axis.format.font.patch(request_body = request_body)


```