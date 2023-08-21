---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ThumbnailsRequestBuilder.ThumbnailsRequestBuilderGetQueryParameters(
		select = ["c300x400_crop"],
)

request_configuration = ThumbnailsRequestBuilder.ThumbnailsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').thumbnails.get(request_configuration = request_configuration)


```