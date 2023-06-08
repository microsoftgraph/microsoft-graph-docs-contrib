---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = RowsRequestBuilder.RowsRequestBuilderGetQueryParameters(
		top = 5,
		skip = 5,
)

request_configuration = RowsRequestBuilder.RowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.tables.by_table_id('workbookTable-id').rows.get(request_configuration = request_configuration)


```