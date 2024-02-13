---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.teams_request_builder import TeamsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamsRequestBuilder.TeamsRequestBuilderGetQueryParameters(
		filter = "startswith(displayName, 'A')",
		top = 2,
)

request_configuration = TeamsRequestBuilder.TeamsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.get(request_configuration = request_configuration)


```