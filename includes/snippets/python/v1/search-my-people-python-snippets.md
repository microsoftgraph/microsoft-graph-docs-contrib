---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.people.people_request_builder import PeopleRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = PeopleRequestBuilder.PeopleRequestBuilderGetQueryParameters(
		search = "\"Irene McGowen\"",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.people.get(request_configuration = request_configuration)


```