---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.tables.item.rows.rows_request_builder import RowsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.workbook_table_row import WorkbookTableRow
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkbookTableRow(
	values = [
		[
			1,
			2,
			3,
		],
		[
			4,
			5,
			6,
		],
	],
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "respond-async")
request_configuration.headers.add("Workbook-Session-Id", "{Workbook-Session-Id}")


result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').rows.post(request_body, request_configuration = request_configuration)


```