---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.worksheets.item.range.range()_get_request_body import Range()GetRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = Range()GetRequestBody(
	additional_data = {
			"address" : "address-value",
	}
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.worksheets.by_workbook_worksheet_id('workbookWorksheet-id').range.get(request_body)


```