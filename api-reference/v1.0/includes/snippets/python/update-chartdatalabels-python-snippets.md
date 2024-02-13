---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_chart_data_labels import WorkbookChartDataLabels

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookChartDataLabels(
	position = "position-value",
	show_value = True,
	show_series_name = True,
	show_category_name = True,
	show_legend_key = True,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').charts.by_workbook_chart_id('workbookChart-id').data_labels.patch(request_body)


```