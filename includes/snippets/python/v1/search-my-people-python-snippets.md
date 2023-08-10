---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PeopleRequestBuilder.PeopleRequestBuilderGetQueryParameters(
		search = "\"Irene McGowen\"",
)

request_configuration = PeopleRequestBuilder.PeopleRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.people.get(request_configuration = request_configuration)


```