---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_chart_legend import WorkbookChartLegend

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookChartLegend(
	visible = True,
	position = "position-value",
	overlay = True,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').charts.by_workbook_chart_id('workbookChart-id').legend.patch(request_body)


```