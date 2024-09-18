---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.names.item.range.clear.clear_post_request_body import ClearPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ClearPostRequestBody(
	apply_to = "applyTo-value",
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.names.by_workbook_named_item_id('workbookNamedItem-id').range.clear.post(request_body)


```