---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.drives.item.items.item.workbook.names.item.range.used_range.used_range()_get_request_body import UsedRange()GetRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UsedRange()GetRequestBody(
	additional_data = {
			"values_only" : True,
	}
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.names.by_workbook_named_item_id('workbookNamedItem-id').range.used_range.get(request_body)


```