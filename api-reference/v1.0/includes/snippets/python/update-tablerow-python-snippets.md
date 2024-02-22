---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_table_row import WorkbookTableRow

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookTableRow(
	index = 99,
	values = "values-value",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').rows.by_workbook_table_row_id('workbookTableRow-id').patch(request_body)


```