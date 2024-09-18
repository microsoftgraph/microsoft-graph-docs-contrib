---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.worksheets.item.charts.item.format.fill.set_solid_color.set_solid_color_post_request_body import SetSolidColorPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetSolidColorPostRequestBody(
	color = "color-value",
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').charts.by_workbook_chart_id('workbookChart-id').format.fill.set_solid_color.post(request_body)


```