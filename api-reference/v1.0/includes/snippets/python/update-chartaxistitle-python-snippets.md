---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_chart_axis_title import WorkbookChartAxisTitle

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookChartAxisTitle(
	text = "text-value",
	visible = True,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').charts.by_workbook_chart_id('workbookChart-id').axes.value_axis.title.patch(request_body)


```