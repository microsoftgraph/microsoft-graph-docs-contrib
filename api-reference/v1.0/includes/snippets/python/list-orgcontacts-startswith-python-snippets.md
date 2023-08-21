---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ContactsRequestBuilder.ContactsRequestBuilderGetQueryParameters(
		filter = "startswith(displayName,'A')",
		count = true,
		top = 1,
		orderby = ["displayName"],
)

request_configuration = ContactsRequestBuilder.ContactsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)


result = await client.contacts.get(request_configuration = request_configuration)


```