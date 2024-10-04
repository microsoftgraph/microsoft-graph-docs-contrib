---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.drives.item.items.item.workbook.names.item.range.used_range.used_range()_get_request_body import UsedRange()GetRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UsedRange()GetRequestBody(
	additional_data = {
			"values_only" : True,
	}
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.names.by_workbook_named_item_id('workbookNamedItem-id').range.used_range.get(request_body)


```