---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.drives.item.items.item.workbook.names.add_formula_local.add_formula_local_post_request_body import AddFormulaLocalPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddFormulaLocalPostRequestBody(
	name = "test7",
	formula = "=SUM(Sheet2!$A$1+Sheet2!$A$2)",
	comment = "Comment for the named item",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.names.add_formula_local.post(request_body)


```