---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ContactsRequestBuilder.ContactsRequestBuilderGetQueryParameters(
		search = "\"displayName:wa\"",
		count = True,
)

request_configuration = ContactsRequestBuilder.ContactsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)

result = await graph_client.contacts.get(request_configuration = request_configuration)


```