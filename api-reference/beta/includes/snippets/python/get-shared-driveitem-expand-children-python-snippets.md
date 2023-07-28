---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DriveItemRequestBuilder.DriveItemRequestBuilderGetQueryParameters(
		expand = ["children"],
)

request_configuration = DriveItemRequestBuilder.DriveItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.shares.by_share_id('sharedDriveItem-id').drive_item.get(request_configuration = request_configuration)


```