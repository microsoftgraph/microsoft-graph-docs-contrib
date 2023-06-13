---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = RootRequestBuilder.RootRequestBuilderGetQueryParameters(
		expand = ["children"],
)

request_configuration = RootRequestBuilder.RootRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.drives.by_drive_id('drive-id').root.get(request_configuration = request_configuration)


```