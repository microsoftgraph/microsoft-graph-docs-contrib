---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ContentRequestBuilder.ContentRequestBuilderGetQueryParameters(
		format = "{format}",
)

request_configuration = ContentRequestBuilder.ContentRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').content.get(request_configuration = request_configuration)


```