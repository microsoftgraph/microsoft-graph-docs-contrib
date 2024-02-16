---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.tables.item.rows.rows_request_builder import RowsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RowsRequestBuilder.RowsRequestBuilderGetQueryParameters(
		top = 5,
		skip = 5,
)

request_configuration = RowsRequestBuilder.RowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').rows.get(request_configuration = request_configuration)


```