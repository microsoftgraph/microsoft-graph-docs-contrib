---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_worksheet import WorkbookWorksheet

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookWorksheet(
	position = 99,
	name = "name-value",
	visibility = "visibility-value",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').patch(request_body)


```