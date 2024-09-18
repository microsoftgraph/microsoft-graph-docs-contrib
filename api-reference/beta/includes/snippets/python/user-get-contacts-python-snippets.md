---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.contacts.contacts_request_builder import ContactsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ContactsRequestBuilder.ContactsRequestBuilderGetQueryParameters(
		select = ["displayName","emailAddresses"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.contacts.get(request_configuration = request_configuration)


```