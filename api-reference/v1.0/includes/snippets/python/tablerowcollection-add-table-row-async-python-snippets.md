---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkbookTableRow()
request_body.Values([[1,2,3,],[4,5,6,],])



request_configuration = RowsRequestBuilder.RowsRequestBuilderPostRequestConfiguration(
headers = {
'Prefer' : "respond-async",
'Workbook-Session-Id' : "{Workbook-Session-Id}",
}

)


result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.tables.by_table_id('workbookTable-id').rows.post(request_body = request_body, request_configuration = request_configuration)


```