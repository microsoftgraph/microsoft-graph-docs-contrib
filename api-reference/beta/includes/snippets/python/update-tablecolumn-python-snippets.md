---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_table_column import WorkbookTableColumn

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookTableColumn(
	name = "name-value",
	index = 99,
	values = "values-value",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').columns.by_workbook_table_column_id('workbookTableColumn-id').patch(request_body)


```