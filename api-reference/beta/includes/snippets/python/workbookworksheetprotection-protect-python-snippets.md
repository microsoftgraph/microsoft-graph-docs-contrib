---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.protect_post_request_body import ProtectPostRequestBody
from msgraph.generated.models.workbook_worksheet_protection_options import WorkbookWorksheetProtectionOptions

graph_client = GraphServiceClient(credentials, scopes)

request_body = ProtectPostRequestBody(
	options = WorkbookWorksheetProtectionOptions(
		allow_format_cells = True,
		allow_format_columns = True,
		allow_format_rows = True,
		allow_insert_columns = True,
		allow_insert_rows = True,
		allow_insert_hyperlinks = True,
		allow_delete_columns = True,
		allow_delete_rows = True,
		allow_sort = True,
		allow_auto_filter = True,
		allow_pivot_tables = True,
	),
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').protection.protect.post(request_body)


```