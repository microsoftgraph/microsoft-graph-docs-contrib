---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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