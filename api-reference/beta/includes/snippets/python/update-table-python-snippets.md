---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkbookTable()
request_body.name = 'name-value'

request_body.show_headers = True

request_body.show_totals = True

request_body.style = 'style-value'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.tables.by_table_id('workbookTable-id').patch(request_body = request_body)


```