---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = PeopleRequestBuilder.PeopleRequestBuilderGetQueryParameters(
		search = "\"Irene McGowen\"",
)

request_configuration = PeopleRequestBuilder.PeopleRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.people.get(request_configuration = request_configuration)


```