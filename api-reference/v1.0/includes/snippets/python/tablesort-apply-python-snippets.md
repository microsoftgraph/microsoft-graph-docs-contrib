---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.tables.item.sort.apply.apply_post_request_body import ApplyPostRequestBody
from msgraph.generated.models.workbook_sort_field import WorkbookSortField
from msgraph.generated.models.workbook_icon import WorkbookIcon

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyPostRequestBody(
	fields = [
		WorkbookSortField(
			key = 99,
			sort_on = "sortOn-value",
			ascending = True,
			color = "color-value",
			data_option = "dataOption-value",
			icon = WorkbookIcon(
				set = "set-value",
				index = 99,
			),
		),
	],
	match_case = True,
	method = "method-value",
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').sort.apply.post(request_body)


```