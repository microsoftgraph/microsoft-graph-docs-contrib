---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_chart import WorkbookChart

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookChart(
	id = "id-value",
	height = 99,
	left = 99,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').charts.post(request_body)


```