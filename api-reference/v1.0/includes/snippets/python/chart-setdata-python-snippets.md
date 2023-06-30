---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SetDataPostRequestBody()
request_body.source_data = 'sourceData-value'

request_body.series_by = 'seriesBy-value'




await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.worksheets.by_worksheet_id('workbookWorksheet-id').charts.by_chart_id('workbookChart-id').set_data.post(request_body = request_body)


```