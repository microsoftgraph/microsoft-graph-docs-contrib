---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.add_formula_local_post_request_body import AddFormulaLocalPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddFormulaLocalPostRequestBody(
	name = "test7",
	formula = "=SUM(Sheet2!$A$1+Sheet2!$A$2)",
	comment = "Comment for the named item",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.names.add_formula_local.post(request_body)


```