---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkbookChartAxis()
major_unit = Json()

request_body.major_unit = major_unit
maximum = Json()

request_body.maximum = maximum
minimum = Json()

request_body.minimum = minimum



result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.worksheets.by_worksheet_id('workbookWorksheet-id').charts.by_chart_id('workbookChart-id').axes.value_axis.patch(request_body = request_body)


```