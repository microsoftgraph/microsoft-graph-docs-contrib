---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.workbook_chart_axis import WorkbookChartAxis

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookChartAxis(
	major_unit = MajorUnit(
	),
	maximum = Maximum(
	),
	minimum = Minimum(
	),
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').charts.by_workbook_chart_id('workbookChart-id').axes.value_axis.patch(request_body)


```