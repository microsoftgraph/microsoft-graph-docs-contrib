---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_table import WorkbookTable

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookTable(
	name = "name-value",
	show_headers = True,
	show_totals = True,
	style = "style-value",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').patch(request_body)


```