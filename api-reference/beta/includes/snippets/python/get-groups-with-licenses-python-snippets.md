---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = GroupsRequestBuilder.GroupsRequestBuilderGetQueryParameters(
		select = ["id","assignedLicenses"],
		filter = "assignedLicenses/any()",
		expand = ["members($select=id,displayName)"],
)

request_configuration = GroupsRequestBuilder.GroupsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.groups.get(request_configuration = request_configuration)


```