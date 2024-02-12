---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.tables.item.columns.columns_request_builder import ColumnsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ColumnsRequestBuilder.ColumnsRequestBuilderGetQueryParameters(
		top = 5,
		skip = 5,
)

request_configuration = ColumnsRequestBuilder.ColumnsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').columns.get(request_configuration = request_configuration)


```