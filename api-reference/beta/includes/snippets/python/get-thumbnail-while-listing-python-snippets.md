---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ChildrenRequestBuilder.ChildrenRequestBuilderGetQueryParameters(
		expand = ["thumbnails"],
)

request_configuration = ChildrenRequestBuilder.ChildrenRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').children.get(request_configuration = request_configuration)


```