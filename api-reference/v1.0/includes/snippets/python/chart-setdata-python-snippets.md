---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.set_data_post_request_body import SetDataPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetDataPostRequestBody(
	source_data = "sourceData-value",
	series_by = "seriesBy-value",
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').charts.by_workbook_chart_id('workbookChart-id').set_data.post(request_body)


```