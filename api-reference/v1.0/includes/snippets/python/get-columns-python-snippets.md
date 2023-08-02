---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ColumnsRequestBuilder.ColumnsRequestBuilderGetQueryParameters(
		top = 5,
		skip = 5,
)

request_configuration = ColumnsRequestBuilder.ColumnsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.tables.by_table_id('workbookTable-id').columns.get(request_configuration = request_configuration)


```