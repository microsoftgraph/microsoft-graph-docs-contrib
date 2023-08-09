---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ProtectPostRequestBody()
options = WorkbookWorksheetProtectionOptions()
options.allow_format_cells = True

options.allow_format_columns = True

options.allow_format_rows = True

options.allow_insert_columns = True

options.allow_insert_rows = True

options.allow_insert_hyperlinks = True

options.allow_delete_columns = True

options.allow_delete_rows = True

options.allow_sort = True

options.allow_auto_filter = True

options.allow_pivot_tables = True


request_body.options = options



await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.worksheets.by_worksheet_id('workbookWorksheet-id').protection.protect.post(request_body = request_body)


```