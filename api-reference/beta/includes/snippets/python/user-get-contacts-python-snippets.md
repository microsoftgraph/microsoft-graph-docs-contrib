---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ContactsRequestBuilder.ContactsRequestBuilderGetQueryParameters(
		select = ["displayName","emailAddresses"],
)

request_configuration = ContactsRequestBuilder.ContactsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.contacts.get(request_configuration = request_configuration)


```