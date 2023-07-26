---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ProfileRequestBuilder.ProfileRequestBuilderGetQueryParameters(
		expand = ["names($select=first,last)","skills($select=displayName)"],
)

request_configuration = ProfileRequestBuilder.ProfileRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.profile.get(request_configuration = request_configuration)


```