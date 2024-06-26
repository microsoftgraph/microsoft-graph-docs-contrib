---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.profile.profile_request_builder import ProfileRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ProfileRequestBuilder.ProfileRequestBuilderGetQueryParameters(
		expand = ["names($select=first,last)","skills($select=displayName)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.profile.get(request_configuration = request_configuration)


```