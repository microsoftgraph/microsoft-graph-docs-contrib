---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ProfileRequestBuilder.ProfileRequestBuilderGetQueryParameters(
		expand = ["names($select=first,last)","skills($select=displayName)"],
)

request_configuration = ProfileRequestBuilder.ProfileRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.profile.get(request_configuration = request_configuration)


```