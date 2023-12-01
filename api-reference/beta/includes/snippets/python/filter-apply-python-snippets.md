---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyPostRequestBody(
	criteria = WorkbookFilterCriteria(
		criterion1 = "criterion1-value",
		criterion2 = "criterion2-value",
		color = "color-value",
		operator = Operator(
		),
		icon = WorkbookIcon(
			set = "set-value",
			index = 99,
		),
		dynamic_criteria = "dynamicCriteria-value",
		values = Json(
		),
		filter_on = "filterOn-value",
	),
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').columns.by_workbook_table_column_id('workbookTableColumn-id').filter.apply.post(request_body)


```