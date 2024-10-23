---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.worksheets.item.protection.protect.protect_post_request_body import ProtectPostRequestBody
from msgraph.generated.models.workbook_worksheet_protection_options import WorkbookWorksheetProtectionOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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