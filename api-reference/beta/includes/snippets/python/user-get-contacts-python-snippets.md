---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.contacts.contacts_request_builder import ContactsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ContactsRequestBuilder.ContactsRequestBuilderGetQueryParameters(
		select = ["displayName","emailAddresses"],
)

request_configuration = ContactsRequestBuilder.ContactsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.contacts.get(request_configuration = request_configuration)


```