---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.people.people_request_builder import PeopleRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = PeopleRequestBuilder.PeopleRequestBuilderGetQueryParameters(
		search = "\"Irene McGowen\"",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.people.get(request_configuration = request_configuration)


```