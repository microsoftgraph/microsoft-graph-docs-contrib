---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ApplyPostRequestBody()
fields_workbook_sort_field1 = WorkbookSortField()
fields_workbook_sort_field1.Key = 99

fields_workbook_sort_field1.sort_on = 'sortOn-value'

fields_workbook_sort_field1.ascending = True

fields_workbook_sort_field1.color = 'color-value'

fields_workbook_sort_field1.data_option = 'dataOption-value'

fields_workbook_sort_field1icon = WorkbookIcon()
fields_workbook_sort_field1icon.set = 'set-value'

fields_workbook_sort_field1icon.Index = 99


fields_workbook_sort_field1.icon = fields_workbook_sort_field1icon

fieldsArray []= fieldsWorkbookSortField1;
request_body.fields(fieldsArray)


request_body.match_case = True

request_body.method = 'method-value'




await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.tables.by_table_id('workbookTable-id').sort.apply.post(request_body = request_body)


```