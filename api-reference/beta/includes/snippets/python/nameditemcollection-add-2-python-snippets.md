---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddFormulaLocalPostRequestBody(
	name = "test7",
	formula = "=SUM(Sheet2!$A$1+Sheet2!$A$2)",
	comment = "Comment for the named item",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.names.add_formula_local.post(request_body)


```