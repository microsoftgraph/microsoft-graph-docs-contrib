---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_chart_line_format import WorkbookChartLineFormat

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookChartLineFormat(
	color = "color-value",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').charts.by_workbook_chart_id('workbookChart-id').axes.series_axis.format.line.patch(request_body)


```